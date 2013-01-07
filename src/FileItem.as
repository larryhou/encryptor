package
{
	import flash.utils.ByteArray;
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Jan 7, 2013 9:57:13 AM
	 */
	public class FileItem
	{
		public var file:Object;
		
		public var name:String;
		public var bytes:ByteArray;
		
		/**
		 * 构造函数
		 * create a [EncryptItem] object
		 */
		public function FileItem(file:Object, bytes:ByteArray)
		{
			this.file = file;
			this.bytes = bytes;
			
			this.name = this.file.name;
		}
	}
}