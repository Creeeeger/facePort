.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

.field public final synthetic f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Easy connect enrollee callback onFailure "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WifiDppQrCodeScanner"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onFailure(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onEnrolleeSuccess(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
