import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/box_list_produk.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/new_box_description_seminar.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class CardListProduk extends StatelessWidget {
  final bool lastItem;
  final String dataList;
  final GestureTapCallback onTap;
  final GestureTapCallback onTapJoin;
  final bool enableButtonJoin;
  const CardListProduk({
    Key? key,
    required this.lastItem,
    required this.dataList,
    required this.onTap,
    required this.onTapJoin,
    this.enableButtonJoin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 4,),
          Container(
            width: 205,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                ),
               
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    // spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
               
            margin: EdgeInsets.only(
              left: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
              right:
                  (lastItem) ? SizedMarginPadding.sizedMarginPaddingLayoutWidth : 0,
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: SizedMarginPadding.sized_12,
                left: SizedMarginPadding.sized_12,
                right: SizedMarginPadding.sized_12,
                bottom: SizedMarginPadding.sized_8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 270,
                    height: 139,
                    child: 
                    CacheNetworkImageCustom(
                      idImage:
                      PathImage.produkImage,
                      typeImage: TypeImage.Assets,
                      borderRadiusCustom: true,
                      borderRadiusCustomSet: const BorderRadius.only(
                        topLeft:
                            Radius.circular(SizedBorderRadius.borderRadiusSmallx),
                        topRight:
                            Radius.circular(SizedBorderRadius.borderRadiusSmallx),
                        bottomLeft:  Radius.circular(SizedBorderRadius.borderRadiusSmallx),
                        bottomRight:  Radius.circular(SizedBorderRadius.borderRadiusSmallx),
                      ),
                    ),
                    // CacheNetworkImageCustom(
                    //                idImage: PathImage., typeImage: TypeImage.Assets,
                    //             ),
                  
                  )
                  ,
                  const SizedBox(height: SizedSpace.sizedExtraMedium),
                  
                  BoxListProduk(
                    title: 'Wortel',
                    date: '2010 09 ',
                    dateBegin: '111',
                    dateEnd: '222',
                    enableButtonJoin: enableButtonJoin,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14,)
        ],
      ),
    );
  }
}
