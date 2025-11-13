.class public Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SwipeToCaptureAction.java"


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
    const-class v0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 30
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->context:Landroid/content/Context;

    const/high16 v0, 0x400000

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$MotionAndGestureSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "palm_swipe_to_capture"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_args"

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    goto :goto_0

    :cond_1
    const-string p1, "not_supported"

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
