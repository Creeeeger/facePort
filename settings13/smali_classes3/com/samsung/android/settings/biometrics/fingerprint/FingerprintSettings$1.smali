.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;
.super Landroid/os/Handler;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x2016

    const/16 v0, 0x2022

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
