.class public Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SmartCaptureAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 12
    const-class v0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 26
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.smartcapture"

    const-string v1, "com.samsung.android.app.settings.PreferenceSettingsActivity"

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_screenshot_toolbar"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
