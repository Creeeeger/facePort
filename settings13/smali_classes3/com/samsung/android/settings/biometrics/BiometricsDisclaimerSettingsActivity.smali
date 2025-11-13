.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "BiometricsDisclaimerSettingsActivity.java"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 21
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_option_title_fingerprint:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 23
    sget p1, Lcom/android/settings/R$string;->sec_face_settings_option_about_face_recognition:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "ActionBar clicked"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method
