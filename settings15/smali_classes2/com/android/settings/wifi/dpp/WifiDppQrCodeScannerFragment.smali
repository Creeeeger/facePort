.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field public mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

.field public mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field public mErrorMessage:Landroid/widget/TextView;

.field public final mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

.field public mIsConfiguratorMode:Z

.field public mLatestStatusCode:I

.field public mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

.field public final mSsid:Ljava/lang/String;

.field public mTextureView:Landroid/view/TextureView;

.field public mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

.field public mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static -$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    const-string v2, "store"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {p0, v2, v0, v1, p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/WifiManager;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canConnectWifi(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wi-Fi is not allowed to connect by your organization. SSID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f141a51

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

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

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63b

    return p0

    :cond_0
    const/16 p0, 0x63c

    return p0
.end method

.method public final getViewSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final handleCameraFailure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method public final handleSuccessfulResult(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {p1}, Landroid/net/wifi/UriParserResults;->getUriScheme()I

    move-result p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v3, v3, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v3, v3, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {v0}, Landroid/net/wifi/UriParserResults;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public isDecodeTaskAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValid(Ljava/lang/String;)Z
    .locals 5

    const v0, 0x7f143540

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {p1}, Landroid/net/wifi/UriParserResults;->getUriScheme()I

    move-result p1

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v2

    :cond_0
    return v4

    :catch_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v2
.end method

.method public final isWifiDppHandshaking$1()Z
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    const-string v2, "store"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {p0, v2, v0, v1, p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "modelClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiDppQrCodeScanner{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f14352a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f143542

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_is_configurator_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v0, "key_latest_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v0, "key_wifi_configuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    const-string v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2, p1, v0, v1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    :cond_1
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    :cond_2
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0c21

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onFailure(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wi-Fi connect onFailure reason - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f14352d

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking$1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera$1()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_is_configurator_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_latest_error_code"

    iget v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_wifi_configuration"

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_wifi_configuration"

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-direct {v2, v1}, Lcom/android/settingslib/wifi/WifiPermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "187176859"

    const v4, 0x534e4554

    const-string v5, "WifiDppQrCodeScanner"

    if-nez v2, :cond_2

    const-string v0, "Calling package does not have ACCESS_WIFI_STATE permission for result."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiPermissionChecker;->mLaunchedPackage:Ljava/lang/String;

    const-string v0, "no ACCESS_WIFI_STATE permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v6}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "Calling package does not have ACCESS_FINE_LOCATION permission for result."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiPermissionChecker;->mLaunchedPackage:Ljava/lang/String;

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 p0, -0x1

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking$1()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

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
    .locals 2

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

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f0a04bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking$1()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const p2, 0x7f14352a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object p2, p2, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f14352c

    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p2, 0x7f143542

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    :goto_0
    const p2, 0x7f0a05db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public final restartCamera$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    const-string p0, "WifiDppQrCodeScanner"

    const-string v0, "mCamera is not available for restarting camera"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/qrcode/QrCamera;->mDecodeTask:Lcom/android/settingslib/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public showErrorMessageAndRestartCamera(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateEnrolleeSummary()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f143532

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f143544

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f143543

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
