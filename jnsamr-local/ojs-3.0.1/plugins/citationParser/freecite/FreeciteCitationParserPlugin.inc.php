<?php

/**
 * @file plugins/citationParser/freecite/FreeciteCitationParserPlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class FreeciteCitationParserPlugin
 * @ingroup plugins_citationParser_freecite
 *
 * @brief FreeCite citation extraction connector plug-in.
 */


import('lib.pkp.plugins.citationParser.freecite.PKPFreeciteCitationParserPlugin');

class FreeciteCitationParserPlugin extends PKPFreeciteCitationParserPlugin {
	/**
	 * Constructor
	 */
	function __construct() {
		parent::__construct();
	}
}

?>
