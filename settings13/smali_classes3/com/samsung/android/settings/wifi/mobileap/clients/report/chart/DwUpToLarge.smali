.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;
.super Ljava/lang/Object;
.source "DwUpToLarge.java"


# instance fields
.field private mCurrentFontScale:F

.field private mDefaultTextSize:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    return-void
.end method

.method private setTextSizeInternal(Landroid/widget/TextView;)V
    .locals 2

    .line 31
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 32
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 35
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mDefaultTextSize:F

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    mul-float/2addr v1, p0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/widget/TextView;Landroid/content/res/Configuration;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 24
    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 25
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->setTextSizeInternal(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method onFinishInflate(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mDefaultTextSize:F

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->setTextSizeInternal(Landroid/widget/TextView;)V

    return-void
.end method
