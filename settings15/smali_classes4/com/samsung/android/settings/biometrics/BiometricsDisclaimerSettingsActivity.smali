.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionBar:Landroidx/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeChildViewTextColor(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060545

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f142146

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    const p1, 0x7f1423b0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "ActionBar clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01de

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->changeChildViewTextColor(I)V

    :cond_1
    return-void
.end method
