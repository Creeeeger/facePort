.class public Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "VibrationPatternAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 15
    const-class v0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.as.vibration.VibPickerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_1
    const-string p1, "fail"

    goto :goto_0

    :cond_2
    const-string p1, "not_supported"

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
