// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

import { PackedCounter } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { createTemplate } from "../../libraries/templates/createTemplate.sol";
import { UnitTypes, CombatArchetypes, TerrainTypes, StructureTypes, ItemTypes } from "../common.sol";

import { Combat, CombatTableId, StructureType, StructureTypeTableId, CombatArchetype, CombatArchetypeTableId, Untraversable, UntraversableTableId, Capturable, CapturableTableId, Charger, ChargerTableId, ChargeCap, ChargeCapTableId, Factory, FactoryTableId } from "../index.sol";

bytes32 constant templateId = "Settlement";
bytes32 constant SettlementTemplateId = templateId;
uint256 constant LENGTH = 8;

function SettlementTemplate() {
  bytes32[] memory tableIds = new bytes32[](LENGTH);
  bytes32[] memory encodedLengthss = new bytes32[](LENGTH);
  bytes[] memory staticDatas = new bytes[](LENGTH);
  bytes[] memory dynamicDatas = new bytes[](LENGTH);

  bytes memory staticData;
  PackedCounter encodedLengths;
  bytes memory dynamicData;

  tableIds[0] = ResourceId.unwrap(CombatTableId);
  tableIds[1] = ResourceId.unwrap(StructureTypeTableId);
  tableIds[2] = ResourceId.unwrap(CombatArchetypeTableId);
  tableIds[3] = ResourceId.unwrap(UntraversableTableId);
  tableIds[4] = ResourceId.unwrap(CapturableTableId);
  tableIds[5] = ResourceId.unwrap(ChargerTableId);
  tableIds[6] = ResourceId.unwrap(ChargeCapTableId);
  tableIds[7] = ResourceId.unwrap(FactoryTableId);

  (staticData, encodedLengths, dynamicData) = Combat.encode(250000, 250000, 0, 0, 0, 0);
  staticDatas[0] = staticData;
  encodedLengthss[0] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[0] = dynamicData;

  (staticData, encodedLengths, dynamicData) = StructureType.encode(StructureTypes(uint8(1)));
  staticDatas[1] = staticData;
  encodedLengthss[1] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[1] = dynamicData;

  (staticData, encodedLengths, dynamicData) = CombatArchetype.encode(CombatArchetypes(uint8(10)));
  staticDatas[2] = staticData;
  encodedLengthss[2] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[2] = dynamicData;

  (staticData, encodedLengths, dynamicData) = Untraversable.encode(true);
  staticDatas[3] = staticData;
  encodedLengthss[3] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[3] = dynamicData;

  (staticData, encodedLengths, dynamicData) = Capturable.encode(true);
  staticDatas[4] = staticData;
  encodedLengthss[4] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[4] = dynamicData;

  (staticData, encodedLengths, dynamicData) = Charger.encode(25);
  staticDatas[5] = staticData;
  encodedLengthss[5] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[5] = dynamicData;

  (staticData, encodedLengths, dynamicData) = ChargeCap.encode(750, 0);
  staticDatas[6] = staticData;
  encodedLengthss[6] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[6] = dynamicData;
  bytes32[] memory factory_prototypeIds = new bytes32[](7);
  factory_prototypeIds[0] = 0x53776f7264736d616e0000000000000000000000000000000000000000000000;
  factory_prototypeIds[1] = 0x50696b656d616e00000000000000000000000000000000000000000000000000;
  factory_prototypeIds[2] = 0x50696c6c61676572000000000000000000000000000000000000000000000000;
  factory_prototypeIds[3] = 0x4172636865720000000000000000000000000000000000000000000000000000;
  factory_prototypeIds[4] = 0x4b6e696768740000000000000000000000000000000000000000000000000000;
  factory_prototypeIds[5] = 0x4272757465000000000000000000000000000000000000000000000000000000;
  factory_prototypeIds[6] = 0x4361746170756c74000000000000000000000000000000000000000000000000;
  int32[] memory factory_staminaCosts = new int32[](7);
  factory_staminaCosts[0] = 100;
  factory_staminaCosts[1] = 175;
  factory_staminaCosts[2] = 200;
  factory_staminaCosts[3] = 250;
  factory_staminaCosts[4] = 375;
  factory_staminaCosts[5] = 525;
  factory_staminaCosts[6] = 700;
  (staticData, encodedLengths, dynamicData) = Factory.encode(factory_prototypeIds, factory_staminaCosts);
  staticDatas[7] = staticData;
  encodedLengthss[7] = PackedCounter.unwrap(encodedLengths);
  dynamicDatas[7] = dynamicData;

  createTemplate(templateId, tableIds, staticDatas, encodedLengthss, dynamicDatas);
}
