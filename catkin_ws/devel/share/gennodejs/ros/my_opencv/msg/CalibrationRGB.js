// Auto-generated. Do not edit!

// (in-package my_opencv.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CalibrationRGB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.R = null;
      this.G = null;
      this.B = null;
    }
    else {
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = [];
      }
      if (initObj.hasOwnProperty('G')) {
        this.G = initObj.G
      }
      else {
        this.G = [];
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrationRGB
    // Serialize message field [R]
    bufferOffset = _arraySerializer.uint32(obj.R, buffer, bufferOffset, null);
    // Serialize message field [G]
    bufferOffset = _arraySerializer.uint32(obj.G, buffer, bufferOffset, null);
    // Serialize message field [B]
    bufferOffset = _arraySerializer.uint32(obj.B, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrationRGB
    let len;
    let data = new CalibrationRGB(null);
    // Deserialize message field [R]
    data.R = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [G]
    data.G = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [B]
    data.B = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.R.length;
    length += 4 * object.G.length;
    length += 4 * object.B.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_opencv/CalibrationRGB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69843753f2755d668ff7558392825518';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] R
    uint32[] G
    uint32[] B
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrationRGB(null);
    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = []
    }

    if (msg.G !== undefined) {
      resolved.G = msg.G;
    }
    else {
      resolved.G = []
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = []
    }

    return resolved;
    }
};

module.exports = CalibrationRGB;
