.class public final Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-eq v0, v1, :cond_19

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v5, :cond_18

    const-string p0, "vibrator"

    const/4 v7, -0x1

    const/4 v8, 0x3

    if-eq v0, v8, :cond_13

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "WifiDppQrCodeScanner"

    const-string p1, "Scan success but context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    if-ne v4, v7, :cond_2

    return-void

    :cond_2
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->canConnectWifi(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, v4, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v9, :cond_10

    iget-object v9, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v9

    iget-object v10, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v10, v10, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v10, :cond_4

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_0

    :cond_6
    sget-object v11, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    const/4 v12, 0x5

    if-eqz v11, :cond_7

    move v11, v12

    goto :goto_2

    :cond_7
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v5

    goto :goto_2

    :cond_8
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x6

    goto :goto_2

    :cond_9
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_1

    :cond_a
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    move v11, v2

    goto :goto_2

    :cond_b
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v11, v6

    if-eqz v11, :cond_c

    move v11, v1

    goto :goto_2

    :cond_c
    move v11, v6

    goto :goto_2

    :cond_d
    :goto_1
    move v11, v8

    :goto_2
    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v13

    if-ne v11, v13, :cond_e

    goto :goto_3

    :cond_e
    if-ne v11, v12, :cond_5

    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v10

    if-ne v10, v5, :cond_5

    goto :goto_3

    :cond_f
    const p0, 0x7f14352d

    invoke-virtual {v3, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void

    :cond_10
    :goto_3
    iput-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v8, v3, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v9

    const/16 v10, 0x6af

    const/16 v11, 0x63c

    const/4 v13, 0x0

    const/high16 v12, -0x80000000

    invoke-virtual/range {v8 .. v13}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_11
    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_12

    goto/16 :goto_4

    :cond_12
    sget-object p1, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto/16 :goto_4

    :cond_13
    iget-object v0, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-interface {v0, v5}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;->onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    iget-boolean v0, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-nez v0, :cond_15

    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {v3, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->-$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    invoke-virtual {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_15
    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    :cond_16
    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    iget-object p1, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_17

    goto :goto_4

    :cond_17
    sget-object p1, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_4

    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v1, :cond_1a

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p0, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settingslib/qrcode/QrDecorateView;

    invoke-virtual {p0, v6}, Lcom/android/settingslib/qrcode/QrDecorateView;->setFocused(Z)V

    invoke-virtual {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera$1()V

    goto :goto_4

    :cond_19
    iget-object p0, v3, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1a
    :goto_4
    return-void
.end method
