library flutter_web_pagination;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pagination extends StatefulWidget {
  final int currentPage;
  final int totalPage;
  final ValueChanged<int> onPageChanged;
  final Function(int) onWhichButtonTap;
  final int displayItemCount;

  const Pagination(
      {Key? key,
      required this.onPageChanged,
      required this.currentPage,
      required this.onWhichButtonTap,
      required this.totalPage,
      this.displayItemCount = 11})
      : super(key: key);

  @override
  _PaginationState createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  late int currentPage = widget.currentPage;
  late int totalPage = widget.totalPage;
  late int displayItemCount = widget.displayItemCount;
  late TextEditingController controller = TextEditingController();

  @override
  void didUpdateWidget(covariant Pagination oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.currentPage != widget.currentPage || oldWidget.totalPage != widget.totalPage) {
      setState(() {
        currentPage = widget.currentPage;
        totalPage = widget.totalPage;
      });
    }
  }

  void _updatePage(int page) {
    setState(() {
      currentPage = page;
    });
    widget.onWhichButtonTap(page);
    widget.onPageChanged(page);
  }

  List<Widget> _buildPageItemList() {
    List<Widget> widgetList = [];
    widgetList.add(_PageControlButton(
      enable: currentPage > 1,
      title: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.errorContainer),
          child: const Icon(Icons.keyboard_arrow_left)),
      onTap: () {
        _updatePage(currentPage - 1);
      },
    ));

    var leftPageItemCount = (displayItemCount / 2).floor();

    var rightPageItemCount = max(0, displayItemCount - leftPageItemCount - 1);

    int startPage = max(
        1, currentPage - max(leftPageItemCount, (displayItemCount - totalPage + currentPage - 1)));

    for (; startPage <= currentPage; startPage++) {
      widgetList.add(_PageItem(
        page: startPage,
        isChecked: startPage == currentPage,
        onTap: (page) {
          _updatePage(page);
        },
      ));
    }

    int endPage = min(totalPage, max(displayItemCount, currentPage + rightPageItemCount));

    for (; startPage <= endPage; startPage++) {
      widgetList.add(_PageItem(
        page: startPage,
        isChecked: startPage == currentPage,
        onTap: (page) {
          _updatePage(page);
        },
      ));
    }

    widgetList.add(_PageControlButton(
      enable: currentPage < totalPage,
      title: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.errorContainer),
          child: const Icon(Icons.keyboard_arrow_right)),
      onTap: () {
        _updatePage(currentPage + 1);
      },
    ));
    return widgetList;
  }

  Widget _buildPageInput() {
    return Container(
        height: 40,
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.08), width: 1)),
        width: 50,
        child: TextField(
          controller: controller,
          textAlign: TextAlign.center,
          maxLines: 1,
          // inputFormatters: CustomTextInputFormatter.getIntFormatter(
          //     maxValue: totalPage.toDouble()),
          style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: Theme.of(context).colorScheme.primary,
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: totalPage.toString(),
              hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ..._buildPageItemList(),
      ],
    );
  }
}

class _PageControlButton extends StatefulWidget {
  final bool enable;
  final Widget title;
  final VoidCallback onTap;

  const _PageControlButton(
      {Key? key, required this.enable, required this.title, required this.onTap})
      : super(key: key);

  @override
  _PageControlButtonState createState() => _PageControlButtonState();
}

class _PageControlButtonState extends State<_PageControlButton> {
  Color normalTextColor = const Color(0xFF0175C2);
  late Color textColor = widget.enable ? normalTextColor : Colors.grey;

  @override
  void didUpdateWidget(_PageControlButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enable != widget.enable) {
      setState(() {
        textColor = widget.enable ? normalTextColor : Colors.grey;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
          onTap: widget.enable ? widget.onTap : null,
          onHover: (b) {
            if (!widget.enable) return;
            setState(() {
              textColor = b ? normalTextColor.withAlpha(200) : normalTextColor;
            });
          },
          child: _ItemContainer(child: widget.title)),
    );
  }
}

class _PageItem extends StatefulWidget {
  final int page;
  final bool isChecked;
  final ValueChanged<int> onTap;

  const _PageItem({Key? key, required this.page, required this.isChecked, required this.onTap})
      : super(key: key);

  @override
  __PageItemState createState() => __PageItemState();
}

class __PageItemState extends State<_PageItem> {
  Color normalBackgroundColor = const Color(0xFFF3F3F3);
  Color normalHighlightColor = const Color(0xFF00A3B6);

  late Color backgroundColor = normalBackgroundColor;
  late Color highlightColor = normalHighlightColor;

  @override
  void didUpdateWidget(covariant _PageItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isChecked != widget.isChecked) {
      if (!widget.isChecked) {
        setState(() {
          backgroundColor = normalBackgroundColor;
          highlightColor = normalHighlightColor;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
          onHover: (b) {
            if (widget.isChecked) return;
            setState(() {
              backgroundColor = b ? const Color(0xFFEAEAEA) : normalBackgroundColor;
              highlightColor = b ? const Color(0xFF077BC6) : normalHighlightColor;
            });
          },
          onTap: () {
            widget.onTap(widget.page);
          },
          borderRadius: BorderRadius.circular(8),
          child: _ItemContainer(
            color: widget.isChecked ? Theme.of(context).colorScheme.primary : null,
            child: Center(
              child: Text(
                widget.page.toString(),
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    color: widget.isChecked
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.shadow,
                    fontSize: 14),
              ),
            ),
          )),
    );
  }
}

class _ItemContainer extends StatelessWidget {
  final Widget child;
  final Color? color;

  const _ItemContainer({Key? key, required this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ?? Theme.of(context).colorScheme.errorContainer),
      child: child,
    );
  }
}
