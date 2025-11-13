.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    iput v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    :cond_0
    iget p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mDefaultTextSize:F

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mDefaultTextSize:F

    const v3, 0x3f99999a    # 1.2f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    :cond_0
    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->mCurrentFontScale:F

    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method
