import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistContainer extends StatelessWidget {
  final List<Map<String, dynamic>> wishlist;

  WishlistContainer({required this.wishlist});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: wishlist.length,
            itemBuilder: (context, index) {
              var item = wishlist[index];

              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color.fromRGBO(245, 245, 245, 1),
                  boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
                ),
                child: Row(
                  children: [
                    Container(
                      height: screenWidth * 0.2,
                      width: screenWidth * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: item['image'] != null
                          ? Image.asset(
                        item['image'], // Ensure 'image' is a valid string path
                        fit: BoxFit.contain,
                      )
                          : Icon(Icons.image_not_supported, size: screenWidth * 0.1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: screenWidth * 0.18),
                              child: Text(
                                item['title'] ?? 'No Title', // Default title if null
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Text(
                            "\$${item['price'] ?? '0.00'}", // Default price if null
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: screenWidth * 0.07,
                            width: screenWidth * 0.2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(255, 179, 0, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                              ),
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Shop Now",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.037,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
