.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;
.super Landroid/os/Handler;
.source "FingerprintSettingsMultiSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintSettingsMultiSelect"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmIsAllFingerprintRemove(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semUpdateMatcher(I)Z

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmSelectedCount(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showTemplateChangeToast(Landroid/content/Context;Z)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "reason"

    const-string v2, "cancelsession"

    .line 125
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->finishFingerprintSettings(ILandroid/content/Intent;)V

    return-void

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mfinishSelectMode(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    :goto_1
    return-void
.end method
