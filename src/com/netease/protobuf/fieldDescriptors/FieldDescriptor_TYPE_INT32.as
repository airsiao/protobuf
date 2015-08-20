// vim: tabstop=4 shiftwidth=4

// Copyright (c) 2011 , Yang Bo All rights reserved.
//
// Author: Yang Bo (pop.atry@gmail.com)
//
// Use, modification and distribution are subject to the "New BSD License"
// as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.

package com.netease.protobuf.fieldDescriptors
{
	import com.netease.protobuf.*
	import flash.utils.*
	
	/**
	 * @private
	 */
	public final class FieldDescriptor_TYPE_INT32 extends FieldDescriptor
	{
		public function FieldDescriptor_TYPE_INT32(
			fullName:String, name:String, tag:uint)
		{
			this.fullName = fullName
			this._name = name
			this.tag = tag
		}
		
		override public function get type():Class
		{
			return int
		}
		
		override public function readSingleField(input:IDataInput):*
		{
			return ReadUtils.read_TYPE_INT32(input)
		}
		
		override public function writeSingleField(output:WritingBuffer,
												  value:*):void
		{
			WriteUtils.write_TYPE_INT32(output, value)
		}
	}
}
