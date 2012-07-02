<?php
class Helper {
/**
 * Function for getting the difference between multidimensional arrays
 * @param Array $a1
 * @param Array $a2
 * @return Array
 */
public function multidimensional_array_diff($a1,$a2)
{
	$arr1 = array();
	$arr2 = array();
	$diff = array();
	
	foreach($a1 as $list) {
		foreach($list as $item) {
			$arr1[] = $item['id'];
		}
	}
	foreach($a2 as $list) {
		foreach($list as $item) {
			$arr2[] = $item['id'];
		}
	}
	$diff['new'] = array_diff($arr1, $arr2);
	$diff['complete'] = array_diff($arr2,$arr1);
	return $diff;

	/*
	$r = array();

	foreach ($a2 as $key => $second)
	{
		foreach ($a1 as $key => $first)
		{

			if (isset($a2[$key]))
			{
				foreach ($first as $first_value)
				{
					foreach ($second as $second_value)
					{
						if ($first_value == $second_value)
						{
							$true = true;
							break;
						}
					}
					if (!isset($true))
					{

						$r[$key][] = $first_value;
					}
					unset($true);
				}
			}
			else
			{
				$r[$key] = $first;
			}
		}
	}
	return $r;
	*/
}
}