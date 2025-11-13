.class public Lcom/samsung/android/settings/bixby/target/EasyMuteAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "EasyMuteAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 16
    const-class v0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 30
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->context:Landroid/content/Context;

    const/high16 v0, 0x200000

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 33
    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$MotionAndGestureSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "easy_mute"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_args"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_2
    const-string p1, "fail"

    goto :goto_0

    :cond_3
    const-string p1, "not_supported"

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
