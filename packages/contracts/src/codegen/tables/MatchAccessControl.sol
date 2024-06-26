// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

// Import user types
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

library MatchAccessControl {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "MatchAccessContr", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746200000000000000000000000000004d61746368416363657373436f6e7472);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0020010020000000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes32)
  Schema constant _valueSchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "matchEntity";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "systemId";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get systemId.
   */
  function getSystemId(bytes32 matchEntity) internal view returns (ResourceId systemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Get systemId.
   */
  function _getSystemId(bytes32 matchEntity) internal view returns (ResourceId systemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Get systemId.
   */
  function get(bytes32 matchEntity) internal view returns (ResourceId systemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Get systemId.
   */
  function _get(bytes32 matchEntity) internal view returns (ResourceId systemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Set systemId.
   */
  function setSystemId(bytes32 matchEntity, ResourceId systemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(ResourceId.unwrap(systemId)), _fieldLayout);
  }

  /**
   * @notice Set systemId.
   */
  function _setSystemId(bytes32 matchEntity, ResourceId systemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(ResourceId.unwrap(systemId)), _fieldLayout);
  }

  /**
   * @notice Set systemId.
   */
  function set(bytes32 matchEntity, ResourceId systemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(ResourceId.unwrap(systemId)), _fieldLayout);
  }

  /**
   * @notice Set systemId.
   */
  function _set(bytes32 matchEntity, ResourceId systemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(ResourceId.unwrap(systemId)), _fieldLayout);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 matchEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 matchEntity) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(ResourceId systemId) internal pure returns (bytes memory) {
    return abi.encodePacked(systemId);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(ResourceId systemId) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(systemId);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 matchEntity) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = matchEntity;

    return _keyTuple;
  }
}
