.class public Lcom/android/settings/development/AdbQrcodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# instance fields
.field public mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

.field public mAdbManager:Landroid/debug/IAdbManager;

.field public mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field public mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

.field public mErrorMessage:Landroid/widget/TextView;

.field public final mHandler:Lcom/android/settings/development/AdbQrcodeScannerFragment$2;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mQrCameraView:Landroid/view/View;

.field public final mReceiver:Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

.field public mTextureView:Landroid/view/TextureView;

.field public mVerifyingTextView:Landroid/widget/TextView;

.field public mVerifyingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    new-instance v0, Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment$1;-><init>(Lcom/android/settings/development/AdbQrcodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

    new-instance v0, Lcom/android/settings/development/AdbQrcodeScannerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment$2;-><init>(Lcom/android/settings/development/AdbQrcodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mHandler:Lcom/android/settings/development/AdbQrcodeScannerFragment$2;

    return-void
.end method


# virtual methods
.method public final getFramePosition(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 2

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getViewSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final handleCameraFailure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method public final handleSuccessfulResult(Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mQrCameraView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object v2, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/debug/IAdbManager;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "AdbQrcodeScannerFrag"

    const-string v0, "Unable to enable QR code pairing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public final isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValid(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/settings/wifi/dpp/AdbQrCode;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p0, 0x1

    return p0

    :catch_0
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mHandler:Lcom/android/settings/development/AdbQrcodeScannerFragment$2;

    const v0, 0x7f143540

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f143542

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d003c

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {p0}, Landroid/debug/IAdbManager;->disablePairing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AdbQrcodeScannerFrag"

    const-string v0, "Unable to cancel pairing"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    const-string v0, "AdbQrcodeScannerFrag"

    const-string v1, "mCamera is not available for restarting camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    const-string v0, "adb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0f6c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0a0b99

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f0a04bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    const v0, 0x7f0a02c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mQrCameraView:Landroid/view/View;

    const v0, 0x7f0a10e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingView:Landroid/view/View;

    const v0, 0x7f0a10e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingTextView:Landroid/widget/TextView;

    const v0, 0x7f143542

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f140295

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a05db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
