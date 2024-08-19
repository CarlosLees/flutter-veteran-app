import 'package:veteran_setting/generated/json/base/json_field.dart';
import 'package:veteran_setting/generated/json/car_record_list_entity.g.dart';
import 'dart:convert';
export 'package:veteran_setting/generated/json/car_record_list_entity.g.dart';

@JsonSerializable()
class CarRecordListEntity {
	int? total;
	int? page;
	int? limit;
	int? pages;
	List<CarRecordListList>? list;

	CarRecordListEntity();

	factory CarRecordListEntity.fromJson(Map<String, dynamic> json) => $CarRecordListEntityFromJson(json);

	Map<String, dynamic> toJson() => $CarRecordListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CarRecordListList {
	int? id;
	int? status;
	int? adviceId;
	String? adviceTime;
	int? veteranId;
	String? veteranName;
	String? license;
	String? driverMobile;
	String? addr;
	String? startTime;
	dynamic endtime;
	String? addTime;
	String? updateTime;
	bool? deleted;
	String? carUnit;
	String? carUse;
	String? startAddr;
	String? driverName;
	String? filler;
	String? departureTime;
	String? stopwatchStart;
	String? stopwatchEnd;
	dynamic campTime;
	dynamic entryTime;
	String? returnTime;
	String? registerAddr;
	int? isReturn;
	dynamic approvalComments;
	int? approvalStates;
	dynamic approver;
	String? approvalTime;
	dynamic deliveryTime;
	String? imgbase;
	int? courtyard;
	int? source;
	bool? beBatch;
	String? no;
	dynamic isSend;

	CarRecordListList();

	factory CarRecordListList.fromJson(Map<String, dynamic> json) => $CarRecordListListFromJson(json);

	Map<String, dynamic> toJson() => $CarRecordListListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}