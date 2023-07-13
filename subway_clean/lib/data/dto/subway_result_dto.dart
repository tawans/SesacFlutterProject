class SubwayResultDto {
  ErrorMessage? errorMessage;
  List<RealtimeArrivalList>? realtimeArrivalList;

  SubwayResultDto({this.errorMessage, this.realtimeArrivalList});

  SubwayResultDto.fromJson(Map<String, dynamic> json) {
    errorMessage = json["errorMessage"] == null
        ? null
        : ErrorMessage.fromJson(json["errorMessage"]);
    realtimeArrivalList = json["realtimeArrivalList"] == null
        ? null
        : (json["realtimeArrivalList"] as List)
            .map((e) => RealtimeArrivalList.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (errorMessage != null) {
      data["errorMessage"] = errorMessage?.toJson();
    }
    if (realtimeArrivalList != null) {
      data["realtimeArrivalList"] =
          realtimeArrivalList?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class RealtimeArrivalList {
  dynamic beginRow;
  dynamic endRow;
  dynamic curPage;
  dynamic pageRow;
  int? totalCount;
  int? rowNum;
  int? selectedCount;
  String? subwayId;
  dynamic subwayNm;
  String? updnLine;
  String? trainLineNm;
  dynamic subwayHeading;
  String? statnFid;
  String? statnTid;
  String? statnId;
  String? statnNm;
  dynamic trainCo;
  String? trnsitCo;
  String? ordkey;
  String? subwayList;
  String? statnList;
  String? btrainSttus;
  String? barvlDt;
  String? btrainNo;
  String? bstatnId;
  String? bstatnNm;
  String? recptnDt;
  String? arvlMsg2;
  String? arvlMsg3;
  String? arvlCd;

  RealtimeArrivalList(
      {this.beginRow,
      this.endRow,
      this.curPage,
      this.pageRow,
      this.totalCount,
      this.rowNum,
      this.selectedCount,
      this.subwayId,
      this.subwayNm,
      this.updnLine,
      this.trainLineNm,
      this.subwayHeading,
      this.statnFid,
      this.statnTid,
      this.statnId,
      this.statnNm,
      this.trainCo,
      this.trnsitCo,
      this.ordkey,
      this.subwayList,
      this.statnList,
      this.btrainSttus,
      this.barvlDt,
      this.btrainNo,
      this.bstatnId,
      this.bstatnNm,
      this.recptnDt,
      this.arvlMsg2,
      this.arvlMsg3,
      this.arvlCd});

  RealtimeArrivalList.fromJson(Map<String, dynamic> json) {
    beginRow = json["beginRow"];
    endRow = json["endRow"];
    curPage = json["curPage"];
    pageRow = json["pageRow"];
    totalCount = json["totalCount"];
    rowNum = json["rowNum"];
    selectedCount = json["selectedCount"];
    subwayId = json["subwayId"];
    subwayNm = json["subwayNm"];
    updnLine = json["updnLine"];
    trainLineNm = json["trainLineNm"];
    subwayHeading = json["subwayHeading"];
    statnFid = json["statnFid"];
    statnTid = json["statnTid"];
    statnId = json["statnId"];
    statnNm = json["statnNm"];
    trainCo = json["trainCo"];
    trnsitCo = json["trnsitCo"];
    ordkey = json["ordkey"];
    subwayList = json["subwayList"];
    statnList = json["statnList"];
    btrainSttus = json["btrainSttus"];
    barvlDt = json["barvlDt"];
    btrainNo = json["btrainNo"];
    bstatnId = json["bstatnId"];
    bstatnNm = json["bstatnNm"];
    recptnDt = json["recptnDt"];
    arvlMsg2 = json["arvlMsg2"];
    arvlMsg3 = json["arvlMsg3"];
    arvlCd = json["arvlCd"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["beginRow"] = beginRow;
    data["endRow"] = endRow;
    data["curPage"] = curPage;
    data["pageRow"] = pageRow;
    data["totalCount"] = totalCount;
    data["rowNum"] = rowNum;
    data["selectedCount"] = selectedCount;
    data["subwayId"] = subwayId;
    data["subwayNm"] = subwayNm;
    data["updnLine"] = updnLine;
    data["trainLineNm"] = trainLineNm;
    data["subwayHeading"] = subwayHeading;
    data["statnFid"] = statnFid;
    data["statnTid"] = statnTid;
    data["statnId"] = statnId;
    data["statnNm"] = statnNm;
    data["trainCo"] = trainCo;
    data["trnsitCo"] = trnsitCo;
    data["ordkey"] = ordkey;
    data["subwayList"] = subwayList;
    data["statnList"] = statnList;
    data["btrainSttus"] = btrainSttus;
    data["barvlDt"] = barvlDt;
    data["btrainNo"] = btrainNo;
    data["bstatnId"] = bstatnId;
    data["bstatnNm"] = bstatnNm;
    data["recptnDt"] = recptnDt;
    data["arvlMsg2"] = arvlMsg2;
    data["arvlMsg3"] = arvlMsg3;
    data["arvlCd"] = arvlCd;
    return data;
  }
}

class ErrorMessage {
  int? status;
  String? code;
  String? message;
  String? link;
  String? developerMessage;
  int? total;

  ErrorMessage(
      {this.status,
      this.code,
      this.message,
      this.link,
      this.developerMessage,
      this.total});

  ErrorMessage.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    code = json["code"];
    message = json["message"];
    link = json["link"];
    developerMessage = json["developerMessage"];
    total = json["total"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["status"] = status;
    data["code"] = code;
    data["message"] = message;
    data["link"] = link;
    data["developerMessage"] = developerMessage;
    data["total"] = total;
    return data;
  }
}
