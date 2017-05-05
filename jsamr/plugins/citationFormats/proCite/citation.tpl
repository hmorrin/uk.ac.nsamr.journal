{**
 * plugins/citationFormats/proCite/citation.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * ProCite citation format generator
 *
 *}
{if $galley}
	{url|assign:"articleUrl" page="article" op="view" path=$article->getBestArticleId()|to_array:$galley->getBestGalleyId()}
{else}
	{url|assign:"articleUrl" page="article" op="view" path=$article->getBestArticleId()}
{/if}
TY  - JOUR
{foreach from=$article->getAuthors() item=author}
AU  - {$author->getFullName(true)|escape}
{/foreach}
{if $article->getDatePublished()}
PY  - {$article->getDatePublished()|date_format:"%Y"}
{elseif $issue->getDatePublished()}
PY  - {$issue->getDatePublished()|date_format:"%Y"}
{else}
PY  - {$issue->getYear()|escape}
{/if}
TI  - {$article->getLocalizedTitle()|strip_tags}
JF  - {$journal->getLocalizedName()}{if $issue}; {$issue->getIssueIdentification()|strip_tags}{/if}

{if $article->getStoredPubId('doi')}DO  - {$article->getStoredPubId('doi')|escape}
{/if}
KW  - {$article->getLocalizedSubject()|escape}
N2  - {$article->getLocalizedAbstract()|strip_tags|replace:"\n":" "|replace:"\r":" "}
UR  - {$articleUrl}
