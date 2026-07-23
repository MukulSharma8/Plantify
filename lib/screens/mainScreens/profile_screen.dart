import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.surface,
              child: const Icon(Icons.settings_outlined),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///================ HEADER ==================
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff157C2D),
                    Color(0xff35A84A),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.18),
                        ),
                        child: const Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mukul",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "mukul@leaf.co",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Edit"),
                      )
                    ],
                  ),

                  const SizedBox(height: 24),

                  Row(
                    children: [
                      Expanded(
                        child: _statCard("12", "Orders"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _statCard("8", "Wishlist"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _statCard("240", "Points"),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 18),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                children: [
                  _tile(
                    Icons.inventory_2_outlined,
                    "My Orders",
                    "3 active",
                  ),
                  Divider(height: 1),

                  _tile(
                    Icons.location_on_outlined,
                    "Addresses",
                    "2 saved",
                  ),
                  Divider(height: 1),

                  _tile(
                    Icons.credit_card,
                    "Payment Methods",
                    "Visa •••• 4242",
                  ),
                  Divider(height: 1),

                  _tile(
                    Icons.notifications_none,
                    "Notifications",
                    "",
                  ),
                  Divider(height: 1),

                  _tile(
                    Icons.help_outline,
                    "Help Center",
                    "",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.surface,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Verdant · v1.0",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _statCard(String number, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tile(
      IconData icon,
      String title,
      String subtitle,
      ) {
    return ListTile(
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: const Color(0xffEAF7EC),
        child: Icon(
          icon,
          color: AppColors.primary,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          const SizedBox(width: 10),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}