import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> getAllWarehouse() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/warehouse'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getallwarehouse=decode;
      print(getallwarehouse.length.toString());

    } else {
      print(1);
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }




//2

Future<dynamic> getSingleWarehouse() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};
   var request = http.MultipartRequest('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/warehouse/5'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getsinglewarehouse=decode;
      print(getsinglewarehouse["warehouse_id"].toString());
    } else {
      print(2);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }


//3



Future<dynamic> addWarehouse(List x) async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};

 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/warehouse'));
request.fields.addAll({
  'warehouse_code': x[0].toString(),
  'warehouse_name': x[1].toString(),
  'warehouse_area': x[2].toString(),
  'warehouse_manager_assign': x[3].toString(),
  'purchase_cost': x[4].toString(),
  'dealing_industry': x[5].toString(),
    'warehouse_address': x[6].toString(),
  'city': x[7].toString(),
  'state': x[8].toString(),
  'zip_code': x[9].toString(),
  'country': x[10].toString()
});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Add");
getAllWarehouse();
      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];

      // print(displayzicoinshomescreen);
    } else {
      print(response.reasonPhrase);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }

//4

Future<dynamic> EditWarehouse(List x) async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};

 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/warehouse'));
request.fields.addAll({
  'id':x[0].toString(),
  'warehouse_code': x[1].toString(),
  'warehouse_name': x[2].toString(),
  'warehouse_area': x[3].toString(),
  'warehouse_manager_assign': x[4].toString(),
  'purchase_cost': x[5].toString(),
  'dealing_industry': x[6].toString(),
  'warehouse_address': x[7].toString(),
  'city': x[8].toString(),
  'state': x[9].toString(),
  'zip_code': x[10].toString(),
  'country': x[11].toString()
});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Edit");print(x[6].toString());
      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];
getAllWarehouse();
      // print(displayzicoinshomescreen);
    } else {
      print(response.reasonPhrase);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }
  //client
//5
Future<dynamic> getAllClient() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/customers'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getallclient=decode;
      print(getallclient.length.toString());
    } else {
      print(1);
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }




//6

Future<dynamic> getSingleclient() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};
   var request = http.MultipartRequest('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/customers/1'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getsingleclient=decode;
      print(getsingleclient["userid"].toString());
    } else {
      print(2);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }
//7
Future<dynamic> addClient(List x) async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};

 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/customers'));
request.fields.addAll({
  'company': x[0].toString(),
  'vatoptional': x[1].toString(),
  'phonenumber': x[2].toString(),
  'website': x[3].toString(),
  //'groups_in': x[4].toString(),
  'default_language': x[5].toString(),
    'address': x[6].toString(),
  'city': x[7].toString(),
  'state': x[8].toString(),
  'zip': x[9].toString(),
  'partnership_type': x[10].toString(),
  'country': x[11].toString(),
  'billing_street': x[12].toString(),
  'billing_city': x[13].toString(),
  'billing_state': x[14].toString(),
  'biling_zip': x[15].toString(),
  'billing_country': x[16].toString(),
    'shipping_street': x[17].toString(),
  'shipping_city': x[18].toString(),
  'shipping_state': x[19].toString(),
  'shipping_zip': x[20].toString(),
  'shipping_country': x[21].toString(),
  'client_type': x[22].toString()

});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Add");
getAllClient();
      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];

      // print(displayzicoinshomescreen);
    } else {
      print(response.reasonPhrase);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }

//8
  Future<dynamic> editClient(List x) async {

var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'csrf_cookie_name=df00ed7e3145e3b66e0385994396dfe8; sp_session=4dce491e26a1c241beb86772c3945c45d5b17293'
};
 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/customers'));
request.fields.addAll({
   'id':x[0].toString(),
  'company': x[1].toString(),
  'vat': x[2].toString(),
  'phonenumber': x[3].toString(),
 'website': x[4].toString(),
//'groups_in': x[5].toString(),
  'default_language': x[6].toString(),
    'address': x[7].toString(),
  'city': x[8].toString(),
  'state': x[9].toString(),
  'zip': x[10].toString(),
  //'partnership_type': x[11].toString(),
  'country': x[12].toString(),
  'billing_street': x[13].toString(),
  'billing_city': x[14].toString(),
   'billing_state': x[15].toString(),
   'billing_zip': x[16].toString(),
   'billing_country': x[17].toString(),
     'shipping_street': x[18].toString(),
   'shipping_city': x[19].toString(),
   'shipping_state': x[20].toString(),
  'shipping_zip': x[21].toString(),
  'shipping_country': x[22].toString(),
  'client_type': x[23].toString()

});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Edit");
getAllClient();
      
    } else {
      print(response.statusCode);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);

    }
  }
//9

Future<dynamic> deleteClient(int i) async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI'
};
   var request = http.MultipartRequest('DELETE', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/customers/${i}'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);
getAllClient();
    } else {
      print(2);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }
  //9
Future<dynamic> getAllContact() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/vendor'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getallcontact=decode;
      print(getallcontact.length.toString());
print("CONTACT");
    } else {
      
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }
  //10
  Future<dynamic> getSingleContact() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/vendor/1'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getsinglecontact=decode;
      print(getsinglecontact.length.toString());
print("CONTACT");
    } else {
      
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }
  //10
  Future<dynamic> editContact(List x) async {

var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'csrf_cookie_name=df00ed7e3145e3b66e0385994396dfe8; sp_session=4dce491e26a1c241beb86772c3945c45d5b17293'
};
 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/vendor'));
request.fields.addAll({
   'id':x[0].toString(),
  'firm_name': x[1].toString(),
  'contact_person': x[2].toString(),
   'email': x[3].toString(),
  'mobile_no': x[4].toString(),
 'alternate_no': x[5].toString(),
    'address': x[6].toString(),
  'city': x[7].toString(),
  'state': x[8].toString(),
  'zip': x[9].toString(),
  'country': x[10].toString(),
  'gst': x[11].toString(),
  'pan': x[12].toString(),
   'remarks': x[13].toString(),
  
});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Edit");
getAllContact();
      
    } else {
      print(response.statusCode);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);

    }
  }
//11

  Future<dynamic> addContact(List x) async {

var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'csrf_cookie_name=df00ed7e3145e3b66e0385994396dfe8; sp_session=4dce491e26a1c241beb86772c3945c45d5b17293'
};
 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/vendor'));
request.fields.addAll({
   
  'firm_name': x[0].toString(),
  'contact_person': x[1].toString(),
   'email': x[2].toString(),
  'mobile_no': x[3].toString(),
 'alternate_no': x[4].toString(),
    'address': x[5].toString(),
  'city': x[6].toString(),
  'state': x[7].toString(),
  'zip': x[8].toString(),
  'country': x[9].toString(),
  'gst': x[10].toString(),
  'pan': x[11].toString(),
   'remarks': x[12].toString(),
  
});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print("Add");
getAllContact();
      
    } else {
      print(response.statusCode);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);

    }
  }

//12
Future<dynamic> getAllPurchase() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCBzZWNvbmQiLCJuYW1lIjoiVGVzdCB1c2VyIiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNjI3NjI0NTE1fQ.KVdot6kwrVAB-1j8KiZwN7B5g2stVlXErH6AiSMjJeI',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/index.php/api/purchaseorder'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);
    getallpurchase=decode;
      print(getallpurchase.length.toString());
    print("PURCHASE");
     } else {
print(response.statusCode);     
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }

@override
var getallwarehouse;
var getsinglewarehouse;
var addwarehouse;
var getallclient;
var getsingleclient;
var getallpurchase;
var getallcontact;
var getsinglecontact;

 void asyncMethod() async {
    print("starting");
  // if(getallwarehouse.toString()=="null")  print("yes");else print("no");
   getAllWarehouse();
   getSingleWarehouse();
       getAllClient();
   getSingleclient();
  getSingleContact();
    getAllContact();
//    getAllPurchase();
    }