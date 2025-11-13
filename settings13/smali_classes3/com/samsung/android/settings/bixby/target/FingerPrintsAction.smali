.class public Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "FingerPrintsAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 13
    const-class v0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 27
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "not_supported"

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.settings.BIOMETRICS_SETTINGS"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "finger_scanner"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_args"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_1
    const-string p1, "fail"

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
