import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/route/app_router.dart';

class SearchHomeWidget extends StatelessWidget {
  const SearchHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(60),
      ),
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        style: GoogleFonts.sofiaSans(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 20,
            fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(16, 14, 0, 14),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
            hintText: "Enter pokemon name",
            hintStyle: GoogleFonts.sofiaSans(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 20,
                fontWeight: FontWeight.w400),
            suffixIcon: InkWell(
              onTap: () {
                context.router.push(const PokemonListViewRoute());
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 48,
                width: 48,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
                        blurRadius: 3.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: const Offset(
                          0.5, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    color: Theme.of(context).colorScheme.primary, shape: BoxShape.circle),
                child: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.background,
                  size: 25,
                ),
              ),
            )),
      ),
    );
  }
}
