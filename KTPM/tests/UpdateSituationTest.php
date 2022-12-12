<?php declare(strict_types=1);
use PHPUnit\Framework\TestCase;

include './Model/index.php';

final class UpdateSituationTest extends TestCase
{
    public function testUpdateSuccess(): void
    {
        $user_id = 2;
        $situation = 'Sốt cao';
        $consolution = '';

        $checkUpdate = updateSituation($situation, $consolution, $user_id);

        $this->assertEquals('Cập nhật thành công', $checkUpdate);
    }

    public function testUpdateFail(): void
    {
        $user_id = 2;
        $situation = '';
        $consolution = '';

        $checkUpdate = updateSituation($situation, $consolution, $user_id);

        $this->assertEquals('Cập nhật không thành công', $checkUpdate);
    }

}