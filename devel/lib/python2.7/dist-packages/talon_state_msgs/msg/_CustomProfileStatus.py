# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from talon_state_msgs/CustomProfileStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CustomProfileStatus(genpy.Message):
  _md5sum = "88d6d29a2f14590c2629fee009ce5b24"
  _type = "talon_state_msgs/CustomProfileStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool running
int32 slotRunning
int32[] remainingPoints
float64 remainingTime
bool outOfPoints
"""
  __slots__ = ['running','slotRunning','remainingPoints','remainingTime','outOfPoints']
  _slot_types = ['bool','int32','int32[]','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       running,slotRunning,remainingPoints,remainingTime,outOfPoints

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CustomProfileStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.running is None:
        self.running = False
      if self.slotRunning is None:
        self.slotRunning = 0
      if self.remainingPoints is None:
        self.remainingPoints = []
      if self.remainingTime is None:
        self.remainingTime = 0.
      if self.outOfPoints is None:
        self.outOfPoints = False
    else:
      self.running = False
      self.slotRunning = 0
      self.remainingPoints = []
      self.remainingTime = 0.
      self.outOfPoints = False

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
      buff.write(_get_struct_Bi().pack(_x.running, _x.slotRunning))
      length = len(self.remainingPoints)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.remainingPoints))
      _x = self
      buff.write(_get_struct_dB().pack(_x.remainingTime, _x.outOfPoints))
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
      end += 5
      (_x.running, _x.slotRunning,) = _get_struct_Bi().unpack(str[start:end])
      self.running = bool(self.running)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.remainingPoints = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 9
      (_x.remainingTime, _x.outOfPoints,) = _get_struct_dB().unpack(str[start:end])
      self.outOfPoints = bool(self.outOfPoints)
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
      buff.write(_get_struct_Bi().pack(_x.running, _x.slotRunning))
      length = len(self.remainingPoints)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.remainingPoints.tostring())
      _x = self
      buff.write(_get_struct_dB().pack(_x.remainingTime, _x.outOfPoints))
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
      end += 5
      (_x.running, _x.slotRunning,) = _get_struct_Bi().unpack(str[start:end])
      self.running = bool(self.running)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.remainingPoints = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      _x = self
      start = end
      end += 9
      (_x.remainingTime, _x.outOfPoints,) = _get_struct_dB().unpack(str[start:end])
      self.outOfPoints = bool(self.outOfPoints)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bi = None
def _get_struct_Bi():
    global _struct_Bi
    if _struct_Bi is None:
        _struct_Bi = struct.Struct("<Bi")
    return _struct_Bi
_struct_dB = None
def _get_struct_dB():
    global _struct_dB
    if _struct_dB is None:
        _struct_dB = struct.Struct("<dB")
    return _struct_dB