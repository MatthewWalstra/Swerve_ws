# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from frc_msgs/RobotControllerCANData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotControllerCANData(genpy.Message):
  _md5sum = "14b84f7dc25f03687604ab1fd7c46f75"
  _type = "frc_msgs/RobotControllerCANData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 percentBusUtilization
int32 busOffCount
int32 txFullCount
int32 receiveErrorCount
int32 transmitErrorCount
"""
  __slots__ = ['percentBusUtilization','busOffCount','txFullCount','receiveErrorCount','transmitErrorCount']
  _slot_types = ['float32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       percentBusUtilization,busOffCount,txFullCount,receiveErrorCount,transmitErrorCount

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotControllerCANData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.percentBusUtilization is None:
        self.percentBusUtilization = 0.
      if self.busOffCount is None:
        self.busOffCount = 0
      if self.txFullCount is None:
        self.txFullCount = 0
      if self.receiveErrorCount is None:
        self.receiveErrorCount = 0
      if self.transmitErrorCount is None:
        self.transmitErrorCount = 0
    else:
      self.percentBusUtilization = 0.
      self.busOffCount = 0
      self.txFullCount = 0
      self.receiveErrorCount = 0
      self.transmitErrorCount = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_f4i().pack(_x.percentBusUtilization, _x.busOffCount, _x.txFullCount, _x.receiveErrorCount, _x.transmitErrorCount))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.percentBusUtilization, _x.busOffCount, _x.txFullCount, _x.receiveErrorCount, _x.transmitErrorCount,) = _get_struct_f4i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_f4i().pack(_x.percentBusUtilization, _x.busOffCount, _x.txFullCount, _x.receiveErrorCount, _x.transmitErrorCount))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.percentBusUtilization, _x.busOffCount, _x.txFullCount, _x.receiveErrorCount, _x.transmitErrorCount,) = _get_struct_f4i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f4i = None
def _get_struct_f4i():
    global _struct_f4i
    if _struct_f4i is None:
        _struct_f4i = struct.Struct("<f4i")
    return _struct_f4i