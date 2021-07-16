<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1>User</h1>
<table class="table table table-striped">
    <thead>
        <th>Id</th>
        <th>Username</th>
        <th>Created By</th>
        <th>Created Date</th>
    </thead>
    <tbody>
        <?php foreach($data['users'] as $index=>$user): ?>
            <tr>
                <td><?= $user->id ?></td>
                <td><?= $user->username ?></td>
                <td><?= $user->created_by ?></td>
                <td><?= $user->created_date ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<div class="float-right">
    <?= $data['pager']->links('default', 'custom_pagination') ?>
</div>

<?= $this->endSection() ?>