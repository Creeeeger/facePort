.class public final Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "QrCodeScanModeFragment"

    const-string p1, "scan success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p1, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    const-string v0, "key_broadcast_metadata"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_1
    iget-object p0, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :goto_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    iget-object p0, v3, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
