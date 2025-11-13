.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# static fields
.field static final SHOW_ERROR_MESSAGE_INTERVAL:J = 0x2710L

.field static final SHOW_SUCCESS_SQUARE_INTERVAL:J = 0x3e8L

.field public static final VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;


# instance fields
.field public mBroadcastMetadata:Ljava/lang/String;

.field public mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field public mContext:Landroid/content/Context;

.field public mCornerRadius:I

.field public mErrorMessage:Landroid/widget/TextView;

.field public final mHandler:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

.field public mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mTextureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mHandler:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

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

    const/16 p0, 0x82f

    return p0
.end method

.method public final getViewSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final handleCameraFailure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method public final handleSuccessfulResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioStreamsQrCodeScanFragment"

    const-string v1, "handleSuccessfulResult(), get the qr code string."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mBroadcastMetadata:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mHandler:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mHandler:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final isValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BLUETOOTH:UUID:184F;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mHandler:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$1;

    const v0, 0x7f1404d9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0568

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/settingslib/qrcode/QrCamera;

    iget-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

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

    const p2, 0x7f0a0b99

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070176

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mCornerRadius:I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment$2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setClipToOutline(Z)V

    const p2, 0x7f0a05db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mErrorMessage:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getCachedBluetoothDeviceInSharingOrLeConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Optional;

    move-result-object p2

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1404d0

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
