<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<h2>検索方法</h2>
<dl>
	<dt>フィールド指定検索</dt>
	<dd>
		フィールド名の後にコロン : で指定した任意のフィールドで検索することができます。
		たとえば、ドキュメントの title フィールドで Fess を含むドキュメントを検索する場合は次のように入力します。
		<pre>title:Fess</pre>
		標準で利用可能なフィールドは url, host, site, title, content,
		content_length, last_modified および mimetype になります。
		設定で指定するフィールドは変更することができます。
	</dd>
	<dt>ソート</dt>
	<dd>
		sort 演算子は指定したフィールド名でドキュメントをソートします。
		sort 演算子の利用方法は sort:&lt;field&gt;.&lt;order&gt; になります。
		&lt;order&gt; は asc または desc で昇順・降順を指定できます。
		たとえば、Fess を含むドキュメントでサイズの降順にソートしたい場合、次のように入力します。
		<pre>Fess sort:content_length.desc</pre>
		標準で利用可能なフィールドは created, content_length および last_modified になります。
		設定で指定するフィールドは変更することができます。
	</dd>
	<dt>AND検索</dt>
	<dd>
		AND 演算子は省略可能な連結演算子です。
		AND 演算子は指定した検索語をすべて含むドキュメントにマッチします。
		たとえば、Fess と Solr を含むドキュメント検索するには次のように入力します。
		<pre>Fess AND Solr</pre>
	</dd>
	</dd>
	<dt>OR検索</dt>
	<dd>
		OR 演算子は指定した検索語のいずれかを含むドキュメントにマッチします。
		たとえば、Fess または Solr を含むドキュメントを検索するには次のように入力します。
		<pre>Fess OR Solr</pre>
	</dd>
	<dt>ワイルドカード</dt>
	<dd>
		検索語内で 1 文字または複数文字のワイルドカードをサポートしています。
		? は 1 文字のワイルドカードとして指定でき、* は複数文字のワイルドカードとして指定することができます。
		<pre>Fess*</pre>
		または
		<pre>Fe?s</pre>
		検索語の先頭文字では利用できません。
	</dd>
	<dt>範囲検索</dt>
	<dd>
		範囲検索はフィールド値の範囲を指定することでその条件にマッチするドキュメントを検索します。
		範囲の境界値を含める場合は [] を利用して、含めない場合は {} を利用します。 
		たとえば、content_length フィールドが 1000 から 10000 の値を持つドキュメントを検索する場合は次のように入力します。
		<pre>content_length:[1000 TO 10000]</pre>
	</dd>
	<dt>ブースト検索</dt>
	<dd>
		ブースト検索は検索語の後に ^ を指定することで利用できます。
		^ の後に重み要因を整数で指定することで、その検索語がブーストされます。
		<pre>Fess^100</pre>
	</dd>
	<dt>あいまい検索</dt>
	<dd>
		あいまい検索は検索語の後に ~ を指定することで利用できます。
		たとえば、Fess を含むドキュメントであいまい検索を行う場合は次のように入力します。
		<pre>Fess~0.5</pre>
		~ の後に曖昧さを 1 以下で指定することができます。
		デフォルトは 0.5 になります。
	</dd>
</dl>
<h2>その他</h2>
<dl>
	<dt>ブラウザの検索エンジンに追加</dt>
	<dd>
		ご利用のブラウザの検索エンジン一覧に追加するためには
		<a href="#" onclick='window.external.AddSearchProvider("/osdd/");return false;'>ここ</a>をクリックしてください。
	</dd>
</dl>

