<!DOCTYPE html>
<html>
<head>
    <title>PDF Template</title>
</head>
<body>
    <h1>PDF Content</h1>
    <p>This is the content of the PDF.</p>
    <p>You can add any HTML content here.</p>
    <?php foreach ($data as $item): ?>
        <p><?= $item ?></p>
    <?php endforeach; ?>
</body>
</html>