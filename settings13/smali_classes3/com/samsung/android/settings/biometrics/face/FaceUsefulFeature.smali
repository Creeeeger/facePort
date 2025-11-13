.class public Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature;
.super Lcom/android/settings/SettingsActivity;
.source "FaceUsefulFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 51
    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 68
    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "onBackPressed"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->-$$Nest$smsetFinishValue(Z)V

    .line 75
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 p0, 0x20e8

    .line 58
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
