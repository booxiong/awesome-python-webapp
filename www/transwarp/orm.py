#!/usr/bin/env python
# -*- coding: utf-8 -*

#元类
class ModelMetaclass(type):
	def __new__(cls,name,bases,attrs):
		mapping = ... #读取cls的Field字段
		primary_key = ... #查找primary_key字段
		__table__ = cls.__table__ #读取cls的__table__字段
		#给cls增加一些字段:
		attrs['__mapping__'] = mapping
		attrs['__primary_key__'] = __primary_key__
		attrs['__table__'] = __table__
		return type.__new__(cls,name,bases,attrs)

class Model(dict):
	__metaclass__ = ModelMetaclass

	def __init__(self,**kw):
		super(Model,self).__init__(**kw)

	def __getattr__(self,key):
		try:
			return self[key]
		except KeyError:
			raise AttributeError(r"'Dict' object has no arrtibute '%s'" % key)

	def __setattr__(self,key,value):
		self[key] = value

	@classmethod
	def get(cls,pk):
		d = db.select_one('selct * from %s where %s=?' % (__table__,__primary_key__),pk)
		return cls(**d) if d else None

	def insert(self):
		params = {}
		for k,v in self.__mapping__.iteritems():
			params[v.name] = __getattr__(self,k)

		db.insert(self.__table__,**params)

		return self
		