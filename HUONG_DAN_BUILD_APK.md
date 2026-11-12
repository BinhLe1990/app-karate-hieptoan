# Hướng Dẫn Xuất File .APK Cho Điện Thoại Android (Trên Windows / IDE Antigravity)

Vì môi trường đám mây không có sẵn bộ biên dịch Android SDK (nặng ~5GB), bộ mã nguồn này đã được đóng gói sẵn theo chuẩn **Capacitor** để bạn xuất ra file **`.apk`** trên máy tính Windows của mình chỉ trong vài phút.

## Cách 1: Chạy bằng IDE Antigravity (Nhanh nhất - Tự động hóa)
1. Giải nén tệp `KarateHiepToan_APK_Project.zip` vào một thư mục trên máy Windows (ví dụ: `D:\KarateHiepToan`).
2. Mở thư mục này bằng **IDE Antigravity (Anti)**.
3. Mở khung chat Agent và gõ lệnh:
   > *"Hãy chạy `npm install`, `npx cap add android`, sau đó biên dịch file APK debug bằng Gradle (`cd android && .\gradlew assembleDebug`) và chỉ cho tôi đường dẫn file app-debug.apk."*

## Cách 2: Chạy bằng 1 cú nhấp chuột (Dùng Android Studio)
1. Đảm bảo máy Windows đã cài **Node.js** và **Android Studio**.
2. Nhấp đúp vào tệp **`BUILD_APK.bat`** trong thư mục giải nén.
3. Khi **Android Studio** tự mở lên, chọn menu trên cùng:
   **Build** -> **Build Bundle(s) / APK(s)** -> **Build APK(s)**.
4. Sau khoảng 1-2 phút, bấm chữ **locate** ở góc dưới bên phải để lấy file **`app-debug.apk`** gửi qua Zalo cài thẳng lên điện thoại Android của bạn.

## Cách 3: Không cần cài Android Studio (Dùng GitHub Actions miễn phí)
- Đẩy thư mục này lên một repository trên GitHub (đã tích hợp sẵn tệp `.github/workflows/build-apk.yml`), GitHub sẽ tự động build file `.apk` trên đám mây và cho phép bạn tải về ngay trên điện thoại.
