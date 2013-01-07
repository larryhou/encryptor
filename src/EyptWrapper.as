package
{
	import com.larrio.dump.SWFile;
	import com.larrio.dump.encrypt.FileEncryptor;
	
	import flash.display.Sprite;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Jan 7, 2013 9:55:29 AM
	 */
	public class EyptWrapper extends Sprite implements IWrapper
	{
		private var _queue:Vector.<FileItem>;
		private var _encryptor:FileEncryptor;
		private var _dict:Dictionary;
		
		/**
		 * 构造函数
		 * create a [EncryptorWrapper] object
		 */
		public function EyptWrapper()
		{
			
		}
		
		public function reset():void
		{
			_queue = new Vector.<FileItem>;
			_encryptor = new FileEncryptor();
			_dict = new Dictionary(true);
		}
		
		public function addFile(item:FileItem):void
		{
			_queue.push(item);
			_dict[item] = new SWFile(item.bytes);
			
			_encryptor.addFile(_dict[item]);
		}
		
		public function encrypt():XML
		{
			return _encryptor.encrypt();
		}
		
		public function repack(item:FileItem):ByteArray
		{
			var swf:SWFile = _dict[item];
			if (swf) return swf.repack();
			return null;
		}
	}
}