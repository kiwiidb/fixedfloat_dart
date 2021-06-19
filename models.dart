class Order {
  String code;
  Data data;
  List<Debug> debug;
  String msg;

  Order({this.code, this.data, this.debug, this.msg});

  Order.fromJson(Map<String, dynamic> json) {
    code = json['code'].toString();
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    if (json['debug'] != null) {
      debug = new List<Debug>();
      json['debug'].forEach((v) {
        debug.add(new Debug.fromJson(v));
      });
    }
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    if (this.debug != null) {
      data['debug'] = this.debug.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  Back back;
  String email;
  Emergency emergency;
  int expiration;
  bool finish;
  From from;
  String id;
  int left;
  double rate;
  double rateRev;
  int reg;
  bool start;
  String status;
  String step;
  From to;
  String token;
  String type;
  int update;

  Data(
      {this.back,
      this.email,
      this.emergency,
      this.expiration,
      this.finish,
      this.from,
      this.id,
      this.left,
      this.rate,
      this.rateRev,
      this.reg,
      this.start,
      this.status,
      this.step,
      this.to,
      this.token,
      this.type,
      this.update});

  Data.fromJson(Map<String, dynamic> json) {
    back = json['back'] != null ? new Back.fromJson(json['back']) : null;
    email = json['email'];
    emergency = json['emergency'] != null
        ? new Emergency.fromJson(json['emergency'])
        : null;
    expiration = json['expiration'];
    finish = json['finish'];
    from = json['from'] != null ? new From.fromJson(json['from']) : null;
    id = json['id'];
    left = json['left'];
    rate = json['rate'];
    rateRev = json['rateRev'];
    reg = json['reg'];
    start = json['start'];
    status = json['status'];
    step = json['step'];
    to = json['to'] != null ? new From.fromJson(json['to']) : null;
    token = json['token'];
    type = json['type'];
    update = json['update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.back != null) {
      data['back'] = this.back.toJson();
    }
    data['email'] = this.email;
    if (this.emergency != null) {
      data['emergency'] = this.emergency.toJson();
    }
    data['expiration'] = this.expiration;
    data['finish'] = this.finish;
    if (this.from != null) {
      data['from'] = this.from.toJson();
    }
    data['id'] = this.id;
    data['left'] = this.left;
    data['rate'] = this.rate;
    data['rateRev'] = this.rateRev;
    data['reg'] = this.reg;
    data['start'] = this.start;
    data['status'] = this.status;
    data['step'] = this.step;
    if (this.to != null) {
      data['to'] = this.to.toJson();
    }
    data['token'] = this.token;
    data['type'] = this.type;
    data['update'] = this.update;
    return data;
  }
}

class Back {
  String address;
  Null alias;
  String amount;
  String currency;
  String extra;
  Null name;
  Null network;
  String qty;
  Null subSymbol;
  Null symbol;
  Tx tx;

  Back(
      {this.address,
      this.alias,
      this.amount,
      this.currency,
      this.extra,
      this.name,
      this.network,
      this.qty,
      this.subSymbol,
      this.symbol,
      this.tx});

  Back.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    alias = json['alias'];
    amount = json['amount'];
    currency = json['currency'];
    extra = json['extra'];
    name = json['name'];
    network = json['network'];
    qty = json['qty'];
    subSymbol = json['subSymbol'];
    symbol = json['symbol'];
    tx = json['tx'] != null ? new Tx.fromJson(json['tx']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['alias'] = this.alias;
    data['amount'] = this.amount;
    data['currency'] = this.currency;
    data['extra'] = this.extra;
    data['name'] = this.name;
    data['network'] = this.network;
    data['qty'] = this.qty;
    data['subSymbol'] = this.subSymbol;
    data['symbol'] = this.symbol;
    if (this.tx != null) {
      data['tx'] = this.tx.toJson();
    }
    return data;
  }
}

class Tx {
  Null amount;
  Null ccyfee;
  Null confirmations;
  Null fee;
  Null id;
  bool time;
  bool timeBlock;

  Tx(
      {this.amount,
      this.ccyfee,
      this.confirmations,
      this.fee,
      this.id,
      this.time,
      this.timeBlock});

  Tx.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    ccyfee = json['ccyfee'];
    confirmations = json['confirmations'];
    fee = json['fee'];
    id = json['id'];
    time = json['time'];
    timeBlock = json['timeBlock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['ccyfee'] = this.ccyfee;
    data['confirmations'] = this.confirmations;
    data['fee'] = this.fee;
    data['id'] = this.id;
    data['time'] = this.time;
    data['timeBlock'] = this.timeBlock;
    return data;
  }
}

class Emergency {
  String choice;
  String repeat;
  List<String> status;

  Emergency({this.choice, this.repeat, this.status});

  Emergency.fromJson(Map<String, dynamic> json) {
    choice = json['choice'];
    repeat = json['repeat'];
    if (json['status'] != null) {
      status = <String>[];
      json['status'].forEach((v) {
        status.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['choice'] = this.choice;
    data['repeat'] = this.repeat;
    if (this.status != null) {
      data['status'] = this.status.map((v) => v).toList();
    }
    return data;
  }
}

class From {
  String address;
  String alias;
  String amount;
  String currency;
  String extra;
  String name;
  String network;
  String qty;
  String subSymbol;
  String symbol;
  Tx tx;

  From(
      {this.address,
      this.alias,
      this.amount,
      this.currency,
      this.extra,
      this.name,
      this.network,
      this.qty,
      this.subSymbol,
      this.symbol,
      this.tx});

  From.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    alias = json['alias'];
    amount = json['amount'];
    currency = json['currency'];
    extra = json['extra'];
    name = json['name'];
    network = json['network'];
    qty = json['qty'];
    subSymbol = json['subSymbol'];
    symbol = json['symbol'];
    tx = json['tx'] != null ? new Tx.fromJson(json['tx']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['alias'] = this.alias;
    data['amount'] = this.amount;
    data['currency'] = this.currency;
    data['extra'] = this.extra;
    data['name'] = this.name;
    data['network'] = this.network;
    data['qty'] = this.qty;
    data['subSymbol'] = this.subSymbol;
    data['symbol'] = this.symbol;
    if (this.tx != null) {
      data['tx'] = this.tx.toJson();
    }
    return data;
  }
}

class Debug {
  String address;
  String currency;

  Debug({this.address, this.currency});

  Debug.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['currency'] = this.currency;
    return data;
  }
}
