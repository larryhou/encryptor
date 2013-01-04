package
{
	import com.larrio.dump.SWFile;
	
	import flash.filesystem.File;
	import flash.utils.ByteArray;
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Jan 4, 2013 12:47:12 PM
	 */
	public class FileItem
	{
		public var file:File;
		public var bytes:ByteArray;
		public var swf:SWFile;
		
		/**
		 * 构造函数
		 * create a [FileItem] object
		 */
		public function FileItem(file:File, bytes:ByteArray)
		{
			this.file = file;
			this.bytes = bytes;
		}
	}
}