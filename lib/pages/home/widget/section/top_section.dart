import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive1/breakpiont.dart';
import 'package:responsive1/pages/home/widget/custum_research.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= WEB_BREAK_POINT)
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Image.network(
                    "https://img-a.udemycdn.com/notices/web_banner/image_udlite/1ea5cfe4-5880-40db-aebf-439dc34d9142.jpg?pDDLHfsKAF7vtV-PVMWNt7kBs6QBmkplMzuVF1WJxhr0ATib8dDwStedHdKmgqAwskPuhPo__OFyQ-8sDWW_gGkdS8-xGrB_LNHIHNxs3III4o3GeaS5RSpE1jwRlubBpnScoAXsWwTaNiIZN6w_IqUJ8l0SuAFM3fMlEaVTjRZWX80jWiz9",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 50,
                    child: Card(
                        color: Colors.black,
                        elevation: 8,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          width: 400,
                          child: Column(
                            children: [
                              Text(
                                "Oferta para novo cliente!",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Os principais cursos a partir de R\$25,99 cada ao visitar a Udemy pela primeira vez",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CustumResearch(),
                            ],
                          ),
                        )))
              ],
            ),
          );

        if (maxWidth >= MOBILE_BREAK_POINT) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: Image.network(
                    "https://img-a.udemycdn.com/notices/web_banner/image_udlite/1ea5cfe4-5880-40db-aebf-439dc34d9142.jpg?pDDLHfsKAF7vtV-PVMWNt7kBs6QBmkplMzuVF1WJxhr0ATib8dDwStedHdKmgqAwskPuhPo__OFyQ-8sDWW_gGkdS8-xGrB_LNHIHNxs3III4o3GeaS5RSpE1jwRlubBpnScoAXsWwTaNiIZN6w_IqUJ8l0SuAFM3fMlEaVTjRZWX80jWiz9",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 30,
                    child: Card(
                        color: Colors.black,
                        elevation: 8,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                "Oferta para novo cliente!",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Os principais cursos a partir de R\$25,99 cada ao visitar a Udemy pela primeira vez",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CustumResearch(),
                            ],
                          ),
                        )))
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.2,
              child: Image.network(
                "https://img-a.udemycdn.com/notices/web_banner/image_udlite/1ea5cfe4-5880-40db-aebf-439dc34d9142.jpg?pDDLHfsKAF7vtV-PVMWNt7kBs6QBmkplMzuVF1WJxhr0ATib8dDwStedHdKmgqAwskPuhPo__OFyQ-8sDWW_gGkdS8-xGrB_LNHIHNxs3III4o3GeaS5RSpE1jwRlubBpnScoAXsWwTaNiIZN6w_IqUJ8l0SuAFM3fMlEaVTjRZWX80jWiz9",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Oferta para novo cliente!",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Os principais cursos a partir de R\$25,99 cada ao visitar a Udemy pela primeira vez",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustumResearch(),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
