import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonListingSearchWidget extends StatelessWidget {
  const PokemonListingSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: const Offset(
              0.2, // Move to right 10  horizontally
              2.5, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: TextFormField(
        style: GoogleFonts.sofiaSans(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 20,
            fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(16, 7, 12, 7),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
            hintText: "Enter pokemon name",
            prefixIcon: Icon(
              Icons.search,
              size: 25,
              color: Theme.of(context).colorScheme.secondary,
            ),
            prefixIconConstraints: const BoxConstraints(minWidth: 50),
            hintStyle: GoogleFonts.sofiaSans(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
