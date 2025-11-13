.class public Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen;
.super Lcom/android/settings/SettingsActivity;
.source "FaceStayOnLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 58
    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_show_multi_pane_layout"

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 70
    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "onBackPressed"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->access$000(Z)V

    .line 77
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    const-string p1, "FcstFaceStayOnLockScreen"

    const-string v0, "onClickContinue"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->access$000(Z)V

    const/4 p1, -0x1

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
