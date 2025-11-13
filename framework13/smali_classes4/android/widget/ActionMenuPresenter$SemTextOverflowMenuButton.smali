.class Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTextOverflowMenuButton"
.end annotation


# static fields
.field private static final blacklist MAX_FONT_SCALE:F = 1.2f


# instance fields
.field private blacklist mCurrentFontScale:F

.field private blacklist mDefaultTextSize:F

.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .line 1509
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1510
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 1506
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    .line 1512
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1514
    .local p1, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0xbb

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1516
    .local v0, "textAppearnceId":I
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextAppearance(I)V

    .line 1517
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1519
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1525
    .local v1, "a2":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1527
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1529
    if-eqz v2, :cond_1

    .line 1530
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    .line 1531
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    .line 1533
    const v4, 0x3f99999a    # 1.2f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1534
    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    .line 1536
    :cond_0
    const/4 v3, 0x1

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    .line 1539
    :cond_1
    return-void
.end method


# virtual methods
.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1586
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1543
    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1547
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const/4 v2, 0x0

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1550
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 1551
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1550
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setMinimumHeight(I)V

    .line 1553
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1557
    .end local v0    # "a":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1559
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    .line 1561
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1562
    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    .line 1564
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    .line 1567
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1591
    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onMeasure(II)V

    .line 1592
    return-void
.end method

.method public whitelist performClick()Z
    .locals 2

    .line 1573
    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1574
    return v1

    .line 1577
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->playSoundEffect(I)V

    .line 1578
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 1579
    return v1
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1583
    return-void
.end method
