class DataNullSafety {
  static const Map<String, dynamic> errorDefeault = {
    "success": false,
    "data": null,
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
  static const Map<String, dynamic> errorListDefault = {
    "success": false,
    "data": {
      "paging": {
        "count": 0,
        "next": false,
        "prev": false,
        "page": 1,
        "perPage": 15
      },
      "list": []
    },
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
  static const Map<String, dynamic> errorRequest = {
    "success": false,
    "data": {
      "id": "",
      "code": "",
      "content": "",
      "createdAt": "",
      "status": "",
      "customer": {
        "sentra": {
          "name": "",
          "location": {
            "_id": "",
            "province": "",
            "city": "",
            "district": "",
            "urban": "",
            "postalCode": "",
            "id": ""
          }
        },
        "_id": "",
        "fullName": "",
        "nik": "",
        "image": "",
        "id": ""
      },
      "track": [],
      "result": {"remarks": null}
    },
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
  static const Map<String, dynamic> errorMedia = {
    "success": false,
    "data": {
      "name": "",
      "path": "",
      "size": 0,
      "mimetype": "",
      "_id": "",
      "deleted": false,
      "createdAt": "",
      "updatedAt": "",
      "__v": 0,
      "id": ""
    },
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
  static const Map<String, dynamic> errorListCategory = {
    "success": false,
    "data": [
      {
        "id": "61c1932d71e38b2a8e60aa59",
        "name": "Perdagangan",
        "categories": [
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Oleh-Oleh",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          },
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Mainan",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          }
        ]
      },
      {
        "id": "61c1932d71e38b2a8e60aa59",
        "name": "Bisnis Umum",
        "categories": [
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Oleh-Oleh",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          }
        ]
      },
      {
        "id": "61c1932d71e38b2a8e60aa59",
        "name": "Kuliner",
        "categories": [
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Oleh-Oleh",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          },
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Mainan",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          }
        ]
      },
      {
        "id": "61c1932d71e38b2a8e60aa59",
        "name": "Peternakan",
        "categories": [
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Oleh-Oleh",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          },
          {
            "id": "61a70b1941d1a1ed7cd793f3",
            "name": "Kerajinan Mainan",
            "icon": "61a70b1241d1a1ed7cd793d8",
            "iconPath":
                "https://elemes-daya.imgix.net/clay-crafting-1638337297507.png?q=40&auto=compress"
          }
        ]
      }
    ],
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
  static const Map<String, dynamic> errorGetLessonVideo = {
    "success": false,
    "data": {
      "id": "6187ccaf952dc896a9463322",
      "session": "61d2d5423c946fcecb592078",
      "title":
          "Modal Awal Untuk Berternak Domba dan Kambing Skala Kecil | Untuk Pemula",
      "type": "video",
      "focusOn": "plan_basic",
      "startAt": "2022-01-04T07:00:13.378Z",
      "finishAt": "2022-01-04T07:00:13.378Z",
      "currIndex": 0,
      "description":
          "Bisnis Domba dan Kambing Skala Kecil Untung Besar, Cocok untuk Pemula!\n\nTujuan untuk domba atau kambing kurban.\n\nModal awal:\nKandang (8 - 10 ekor kambing atau domba) \nUkuran 1 x 2 m = Rp750.000 – Rp1.000.000\n\nPakan (1 bulan = Rp100.000)\nRp100.000 x 5 bulan = Rp500.000\nRp500.000 x 10 ekor = Rp5.000.000\n\nBibit \nRp800.000 (5 bulan)\n\nObat\nRp10.000 x 10 ekor = Rp100.000\n\nRincian modal awal (untuk 5 bulan):\nKandang Rp1.000.000\n10 ekor kambing / domba Rp9.000.000\nPakan Rp5.000.000\nObat Rp100.000\nTotal Rp15.100.000\n\nEstimasi jual untuk tujuan kurban:\nDomba setelah penggemukkan 28 – 30 kg\n30 kg x Rp70.000 = Rp2.100.000\nRp2.100.000 x 10 ekor = Rp21.000.000\nKeuntungan hampir Rp5.000.000 untuk 10 ekor.\n\n\nBisnis yang cukup menggiurkan, bukan?\n",
      "internalSource": true,
      "source": {"external": null, "internal": "619c83145135a83df918bb10"},
      "duration": 0,
      "sourceData":
          "https://cdn-tepatdaya.elemes.id/pexels-ron-lach-9885560-1637647122186.mp4",
      "totalLesson": 5,
      "next": {
        "id": "61874d10d299da3187feba5a",
        "type": "article",
        "title": "resep telur puyuh balado",
        "finishAt": "2022-01-04T06:59:57.535Z",
        "session": "61d2d5423c946fcecb592079"
      },
      "tags": ["#memasak", "#caramemasak", "#memasaknasigoreng"]
    },
    "error": {"code": 1011, "message": "Internal Server Error"}
  };

  static const Map<String, dynamic> errorGetListScheduleProgram = {
    "success": false,
    "data": [
      {
        "id": "61ee1589cdaa7ca89bc5ed32",
        "type": "volunteer",
        "volunteerProgram": {
          "id": "61ee14b6cdaa7ca89bc5ecae",
          "name": "Program pemberdayaan masyarakat dibidang abc",
          "cover": "61664b63bcf296e4a21c341e",
          "status": "after_hiring",
          "startRegistrationDate": "2022-01-23T00:00:00.000Z",
          "endRegistrationDate": "2022-01-25T00:00:00.000Z",
          "startDate": "2022-01-27T00:00:00.000Z",
          "endDate": "2022-01-30T00:00:00.000Z",
          "address": "medan kota",
          "location": {
            "_id": "6150ac789f2dc102eb70c87f",
            "province": "Bali",
            "city": "Tabanan",
            "district": "Kediri",
            "urban": "Pandak Bandung",
            "postalCode": "82121",
            "id": "6150ac789f2dc102eb70c87f"
          }
        }
      }
    ],
    "error": {"code": 1011, "message": "Internal Server Error"}
  };
}
