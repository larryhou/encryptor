package
{
	import flash.utils.ByteArray;
	
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Jan 7, 2013 9:52:26 AM
	 */
	public interface IWrapper
	{
		function reset():void;
		function addFile(item:FileItem):void;
		function encrypt():XML;
		
		function repack(item:FileItem):ByteArray;
	}
}