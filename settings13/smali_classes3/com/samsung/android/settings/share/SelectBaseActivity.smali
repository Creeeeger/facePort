.class public Lcom/samsung/android/settings/share/SelectBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SelectBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getContentFrameWidthRatio(Landroid/content/Context;)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 61
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 62
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    const v1, 0x44134000    # 589.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const v1, 0x446fc000    # 959.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v1, 0x43cd8000    # 411.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x44700000    # 960.0f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    const p1, 0x44efe000    # 1919.0f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    const/high16 p0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x44f00000    # 1920.0f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    const/high16 p0, 0x3f000000    # 0.5f

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method measureContentFrame()V
    .locals 5

    .line 29
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 30
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 33
    sget v3, Lcom/android/settings/R$dimen;->sec_share_base_side_width_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 34
    sget v3, Lcom/android/settings/R$dimen;->sec_share_base_content_width_ratio:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 36
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 37
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 40
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/share/SelectBaseActivity;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result p0

    .line 41
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "%.3f"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance p0, Ljava/math/BigDecimal;

    const-string v1, "1.0"

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "2.0"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method
