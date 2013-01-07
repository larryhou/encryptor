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
			_encryptor = new FileEncryptor();
			_dict = new Dictionary(true);
		}
		
		public function addFile(item:Object):void
		{
			_dict[item] = new SWFile(item.bytes as ByteArray);
			_encryptor.addFile(_dict[item]);
		}
		
		public function encrypt():XML
		{
			return _encryptor.encrypt();
		}
		
		public function repack(item:Object):ByteArray
		{
			var swf:SWFile = _dict[item];
			if (swf) return swf.repack();
			return null;
		}
	}
}