To format your own documentation, you can use these HTML tags:

> To write your nocdoc documentation in Markdown, you have to convert all Markdown snippets to HTML with **pandoc** (check this [link](https://github.com/noc-lang/manual/blob/main/setup.sh))

### Paragraph

```
<p>..</p>
```

### Line block

```
<p>
    <code>...</code>
</p>
```
### Code Block

```
<pre>
	<code>...</code>
</pre>
```

### Quoting

```
<blockquote><p>..</p></blockquote>
```

### Bold text

```
<strong>..</strong>
```

### Italic text

```
<i>..</i>
```

### Image with caption

```
<figure>
	<img src="img_path" alt="">
	<figcaption>caption</figcaption>
</figure>
```

### Link

```
<p><a href="url">title</a></p>
```

### Table

```
<table>
	<thead>
		<tr>
			<th>a</th>
			...
		</tr>
	</thead>

	<tbody>
		<tr>
			<td>f</td>
			...
		</tr>

		<tr>
			<td>k</td>
			...
		</tr>
		
		<tr>
			<td>p</td>
			...
		</tr>
	</tbody>
</table>
```