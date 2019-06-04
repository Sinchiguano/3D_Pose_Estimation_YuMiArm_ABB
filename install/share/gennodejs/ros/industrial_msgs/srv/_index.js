
"use strict";

let GetRobotInfo = require('./GetRobotInfo.js')
let CmdJointTrajectory = require('./CmdJointTrajectory.js')
let SetRemoteLoggerLevel = require('./SetRemoteLoggerLevel.js')
let SetDrivePower = require('./SetDrivePower.js')
let StopMotion = require('./StopMotion.js')
let StartMotion = require('./StartMotion.js')

module.exports = {
  GetRobotInfo: GetRobotInfo,
  CmdJointTrajectory: CmdJointTrajectory,
  SetRemoteLoggerLevel: SetRemoteLoggerLevel,
  SetDrivePower: SetDrivePower,
  StopMotion: StopMotion,
  StartMotion: StartMotion,
};
