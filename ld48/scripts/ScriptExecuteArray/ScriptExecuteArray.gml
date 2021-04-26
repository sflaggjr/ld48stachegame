//  time stamp 23:25
// GOT THIS FROM https://www.youtube.com/watch?v=m0WFttEI60w&ab_channel=ShaunSpalding
function ScriptExecuteArray(){
	scr = argument0;
	args = argument1;
	
	switch (array_length(args)){
		
		case 1: return script_execute(scr, args[0]);
		
		case 2: return script_execute(scr, args[0], args[1]);
		
		case 3: return script_execute(scr, args[0], args[1], args[2]);
		
		case 4: return script_execute(scr, args[0], args[1], args[2], args[3]);
		
		case 5: return script_execute(scr, args[0], args[1], args[2], args[3], args[4]);
		
		case 6: return script_execute(scr, args[0], args[1], args[2], args[3], args[4], args[5]);
		
		case 7: return script_execute(scr, args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
		
		case 8: return script_execute(scr, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
		
		default: show_error("script_execute_array: argument count not supported!",false);
		
	}
}