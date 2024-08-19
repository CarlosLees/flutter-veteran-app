import 'package:veteran_setting/generated/json/base/json_convert_content.dart';
import 'package:veteran_setting/model/car_record_list_entity.dart';

CarRecordListEntity $CarRecordListEntityFromJson(Map<String, dynamic> json) {
  final CarRecordListEntity carRecordListEntity = CarRecordListEntity();
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    carRecordListEntity.total = total;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    carRecordListEntity.page = page;
  }
  final int? limit = jsonConvert.convert<int>(json['limit']);
  if (limit != null) {
    carRecordListEntity.limit = limit;
  }
  final int? pages = jsonConvert.convert<int>(json['pages']);
  if (pages != null) {
    carRecordListEntity.pages = pages;
  }
  final List<CarRecordListList>? list = (json['list'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<CarRecordListList>(e) as CarRecordListList).toList();
  if (list != null) {
    carRecordListEntity.list = list;
  }
  return carRecordListEntity;
}

Map<String, dynamic> $CarRecordListEntityToJson(CarRecordListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['total'] = entity.total;
  data['page'] = entity.page;
  data['limit'] = entity.limit;
  data['pages'] = entity.pages;
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  return data;
}

extension CarRecordListEntityExtension on CarRecordListEntity {
  CarRecordListEntity copyWith({
    int? total,
    int? page,
    int? limit,
    int? pages,
    List<CarRecordListList>? list,
  }) {
    return CarRecordListEntity()
      ..total = total ?? this.total
      ..page = page ?? this.page
      ..limit = limit ?? this.limit
      ..pages = pages ?? this.pages
      ..list = list ?? this.list;
  }
}

CarRecordListList $CarRecordListListFromJson(Map<String, dynamic> json) {
  final CarRecordListList carRecordListList = CarRecordListList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    carRecordListList.id = id;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    carRecordListList.status = status;
  }
  final int? adviceId = jsonConvert.convert<int>(json['adviceId']);
  if (adviceId != null) {
    carRecordListList.adviceId = adviceId;
  }
  final String? adviceTime = jsonConvert.convert<String>(json['adviceTime']);
  if (adviceTime != null) {
    carRecordListList.adviceTime = adviceTime;
  }
  final int? veteranId = jsonConvert.convert<int>(json['veteranId']);
  if (veteranId != null) {
    carRecordListList.veteranId = veteranId;
  }
  final String? veteranName = jsonConvert.convert<String>(json['veteranName']);
  if (veteranName != null) {
    carRecordListList.veteranName = veteranName;
  }
  final String? license = jsonConvert.convert<String>(json['license']);
  if (license != null) {
    carRecordListList.license = license;
  }
  final String? driverMobile = jsonConvert.convert<String>(json['driverMobile']);
  if (driverMobile != null) {
    carRecordListList.driverMobile = driverMobile;
  }
  final String? addr = jsonConvert.convert<String>(json['addr']);
  if (addr != null) {
    carRecordListList.addr = addr;
  }
  final String? startTime = jsonConvert.convert<String>(json['startTime']);
  if (startTime != null) {
    carRecordListList.startTime = startTime;
  }
  final dynamic endtime = json['endtime'];
  if (endtime != null) {
    carRecordListList.endtime = endtime;
  }
  final String? addTime = jsonConvert.convert<String>(json['addTime']);
  if (addTime != null) {
    carRecordListList.addTime = addTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    carRecordListList.updateTime = updateTime;
  }
  final bool? deleted = jsonConvert.convert<bool>(json['deleted']);
  if (deleted != null) {
    carRecordListList.deleted = deleted;
  }
  final String? carUnit = jsonConvert.convert<String>(json['carUnit']);
  if (carUnit != null) {
    carRecordListList.carUnit = carUnit;
  }
  final String? carUse = jsonConvert.convert<String>(json['carUse']);
  if (carUse != null) {
    carRecordListList.carUse = carUse;
  }
  final String? startAddr = jsonConvert.convert<String>(json['startAddr']);
  if (startAddr != null) {
    carRecordListList.startAddr = startAddr;
  }
  final String? driverName = jsonConvert.convert<String>(json['driverName']);
  if (driverName != null) {
    carRecordListList.driverName = driverName;
  }
  final String? filler = jsonConvert.convert<String>(json['filler']);
  if (filler != null) {
    carRecordListList.filler = filler;
  }
  final String? departureTime = jsonConvert.convert<String>(json['departureTime']);
  if (departureTime != null) {
    carRecordListList.departureTime = departureTime;
  }
  final String? stopwatchStart = jsonConvert.convert<String>(json['stopwatchStart']);
  if (stopwatchStart != null) {
    carRecordListList.stopwatchStart = stopwatchStart;
  }
  final String? stopwatchEnd = jsonConvert.convert<String>(json['stopwatchEnd']);
  if (stopwatchEnd != null) {
    carRecordListList.stopwatchEnd = stopwatchEnd;
  }
  final dynamic campTime = json['campTime'];
  if (campTime != null) {
    carRecordListList.campTime = campTime;
  }
  final dynamic entryTime = json['entryTime'];
  if (entryTime != null) {
    carRecordListList.entryTime = entryTime;
  }
  final String? returnTime = jsonConvert.convert<String>(json['returnTime']);
  if (returnTime != null) {
    carRecordListList.returnTime = returnTime;
  }
  final String? registerAddr = jsonConvert.convert<String>(json['registerAddr']);
  if (registerAddr != null) {
    carRecordListList.registerAddr = registerAddr;
  }
  final int? isReturn = jsonConvert.convert<int>(json['isReturn']);
  if (isReturn != null) {
    carRecordListList.isReturn = isReturn;
  }
  final dynamic approvalComments = json['approvalComments'];
  if (approvalComments != null) {
    carRecordListList.approvalComments = approvalComments;
  }
  final int? approvalStates = jsonConvert.convert<int>(json['approvalStates']);
  if (approvalStates != null) {
    carRecordListList.approvalStates = approvalStates;
  }
  final dynamic approver = json['approver'];
  if (approver != null) {
    carRecordListList.approver = approver;
  }
  final String? approvalTime = jsonConvert.convert<String>(json['approvalTime']);
  if (approvalTime != null) {
    carRecordListList.approvalTime = approvalTime;
  }
  final dynamic deliveryTime = json['deliveryTime'];
  if (deliveryTime != null) {
    carRecordListList.deliveryTime = deliveryTime;
  }
  final String? imgbase = jsonConvert.convert<String>(json['imgbase']);
  if (imgbase != null) {
    carRecordListList.imgbase = imgbase;
  }
  final int? courtyard = jsonConvert.convert<int>(json['courtyard']);
  if (courtyard != null) {
    carRecordListList.courtyard = courtyard;
  }
  final int? source = jsonConvert.convert<int>(json['source']);
  if (source != null) {
    carRecordListList.source = source;
  }
  final bool? beBatch = jsonConvert.convert<bool>(json['beBatch']);
  if (beBatch != null) {
    carRecordListList.beBatch = beBatch;
  }
  final String? no = jsonConvert.convert<String>(json['no']);
  if (no != null) {
    carRecordListList.no = no;
  }
  final dynamic isSend = json['isSend'];
  if (isSend != null) {
    carRecordListList.isSend = isSend;
  }
  return carRecordListList;
}

Map<String, dynamic> $CarRecordListListToJson(CarRecordListList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['adviceId'] = entity.adviceId;
  data['adviceTime'] = entity.adviceTime;
  data['veteranId'] = entity.veteranId;
  data['veteranName'] = entity.veteranName;
  data['license'] = entity.license;
  data['driverMobile'] = entity.driverMobile;
  data['addr'] = entity.addr;
  data['startTime'] = entity.startTime;
  data['endtime'] = entity.endtime;
  data['addTime'] = entity.addTime;
  data['updateTime'] = entity.updateTime;
  data['deleted'] = entity.deleted;
  data['carUnit'] = entity.carUnit;
  data['carUse'] = entity.carUse;
  data['startAddr'] = entity.startAddr;
  data['driverName'] = entity.driverName;
  data['filler'] = entity.filler;
  data['departureTime'] = entity.departureTime;
  data['stopwatchStart'] = entity.stopwatchStart;
  data['stopwatchEnd'] = entity.stopwatchEnd;
  data['campTime'] = entity.campTime;
  data['entryTime'] = entity.entryTime;
  data['returnTime'] = entity.returnTime;
  data['registerAddr'] = entity.registerAddr;
  data['isReturn'] = entity.isReturn;
  data['approvalComments'] = entity.approvalComments;
  data['approvalStates'] = entity.approvalStates;
  data['approver'] = entity.approver;
  data['approvalTime'] = entity.approvalTime;
  data['deliveryTime'] = entity.deliveryTime;
  data['imgbase'] = entity.imgbase;
  data['courtyard'] = entity.courtyard;
  data['source'] = entity.source;
  data['beBatch'] = entity.beBatch;
  data['no'] = entity.no;
  data['isSend'] = entity.isSend;
  return data;
}

extension CarRecordListListExtension on CarRecordListList {
  CarRecordListList copyWith({
    int? id,
    int? status,
    int? adviceId,
    String? adviceTime,
    int? veteranId,
    String? veteranName,
    String? license,
    String? driverMobile,
    String? addr,
    String? startTime,
    dynamic endtime,
    String? addTime,
    String? updateTime,
    bool? deleted,
    String? carUnit,
    String? carUse,
    String? startAddr,
    String? driverName,
    String? filler,
    String? departureTime,
    String? stopwatchStart,
    String? stopwatchEnd,
    dynamic campTime,
    dynamic entryTime,
    String? returnTime,
    String? registerAddr,
    int? isReturn,
    dynamic approvalComments,
    int? approvalStates,
    dynamic approver,
    String? approvalTime,
    dynamic deliveryTime,
    String? imgbase,
    int? courtyard,
    int? source,
    bool? beBatch,
    String? no,
    dynamic isSend,
  }) {
    return CarRecordListList()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..adviceId = adviceId ?? this.adviceId
      ..adviceTime = adviceTime ?? this.adviceTime
      ..veteranId = veteranId ?? this.veteranId
      ..veteranName = veteranName ?? this.veteranName
      ..license = license ?? this.license
      ..driverMobile = driverMobile ?? this.driverMobile
      ..addr = addr ?? this.addr
      ..startTime = startTime ?? this.startTime
      ..endtime = endtime ?? this.endtime
      ..addTime = addTime ?? this.addTime
      ..updateTime = updateTime ?? this.updateTime
      ..deleted = deleted ?? this.deleted
      ..carUnit = carUnit ?? this.carUnit
      ..carUse = carUse ?? this.carUse
      ..startAddr = startAddr ?? this.startAddr
      ..driverName = driverName ?? this.driverName
      ..filler = filler ?? this.filler
      ..departureTime = departureTime ?? this.departureTime
      ..stopwatchStart = stopwatchStart ?? this.stopwatchStart
      ..stopwatchEnd = stopwatchEnd ?? this.stopwatchEnd
      ..campTime = campTime ?? this.campTime
      ..entryTime = entryTime ?? this.entryTime
      ..returnTime = returnTime ?? this.returnTime
      ..registerAddr = registerAddr ?? this.registerAddr
      ..isReturn = isReturn ?? this.isReturn
      ..approvalComments = approvalComments ?? this.approvalComments
      ..approvalStates = approvalStates ?? this.approvalStates
      ..approver = approver ?? this.approver
      ..approvalTime = approvalTime ?? this.approvalTime
      ..deliveryTime = deliveryTime ?? this.deliveryTime
      ..imgbase = imgbase ?? this.imgbase
      ..courtyard = courtyard ?? this.courtyard
      ..source = source ?? this.source
      ..beBatch = beBatch ?? this.beBatch
      ..no = no ?? this.no
      ..isSend = isSend ?? this.isSend;
  }
}