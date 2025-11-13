.class public Lcom/samsung/android/settings/biometrics/SuwBiometricsRotationGuide;
.super Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;
.source "SuwBiometricsRotationGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;-><init>()V

    return-void
.end method

.method private adjustNextButtonFontScale()V
    .locals 4

    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 46
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAdjustedFontScale(FF)F

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsRotationGuide;->mNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_text_size:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 37
    sget v0, Lcom/android/settings/R$id;->next_button:I

    if-ne p1, v0, :cond_0

    const-string p1, "SuwBiometricsRotationGuide"

    const-string v0, "Next button clicked"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SuwBiometricsRotationGuide"

    const-string v0, "onCreate"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget p1, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsRotationGuide;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsRotationGuide;->adjustNextButtonFontScale()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->onResume()V

    return-void
.end method
