<?php declare(strict_types=1);
use PHPUnit\Framework\TestCase;

include './Model/index.php';

function random($n) // random chuỗi length = n
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
    $randomString = '';

    for ($i = 0; $i < $n; $i++) {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }

    return $randomString;
}

final class RegisterTest extends TestCase
{
    public function testCanBeRegisterSuccess(): void
    {
        $username = random(10);
        $data = [
            'user' => $username,
            'pass' => 'cuc12345678',
            'rpass' => 'cuc12345678',
            'name' => 'Trần Thị Thanh Cúc',
            'sdt' => '0774565149',
            'email' => $username . '@gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals($data['user'], $checkRegister);
    }

    public function testFailPass(): void
    {
        $data = [
            'user' => 'thanh cuc 2',
            'pass' => 'cuc',
            'rpass' => 'cuc',
            'name' => 'Trần Thị Thanh Cúc',
            'sdt' => '0774565149',
            'email' => 'cuciu111@gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals('Mật khẩu tối thiểu 8 ký tự và ít nhất 1 số', $checkRegister);
    }

    public function testFailRePass(): void
    {
        $data = [
            'user' => 'thanh cuc 3',
            'pass' => 'cuc12345678',
            'rpass' => 'cuc',
            'name' => 'Trần Thị Thanh Cúc',
            'sdt' => '0774565149',
            'email' => 'cuciu111@gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals('Mật khẩu không trùng khớp', $checkRegister);
    }

    public function testFailName(): void
    {
        $username = random(10);
        $data = [
            'user' => $username,
            'pass' => 'cuc12345678',
            'rpass' => 'cuc12345678',
            'name' => 'Trần Thị Thanh Cúc 123',
            'sdt' => '0774565149',
            'email' => $username . '@gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals('Họ tên không hợp lệ', $checkRegister);
    }

    public function testFailSdt(): void
    {
        $data = [
            'user' => 'thanh cuc 5',
            'pass' => 'cuc12345678',
            'rpass' => 'cuc12345678',
            'name' => 'Trần Thị Thanh Cúc',
            'sdt' => '07745651491234',
            'email' => 'cuciu111@gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals('Số điện thoại không chính xác', $checkRegister);
    }

    public function testFailEmail(): void
    {
        $data = [
            'user' => 'thanh cuc 6',
            'pass' => 'cuc12345678',
            'rpass' => 'cuc12345678',
            'name' => 'Trần Thị Thanh Cúc',
            'sdt' => '0774565149',
            'email' => 'cuciu111gmail.com'
        ];

        $checkRegister = register($data);

        $this->assertEquals('Email không hợp lệ', $checkRegister);
    }
}

// Nên sửa cái user cho random.. chứ không lỡ đăng ký rồi thì oke :v