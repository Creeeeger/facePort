.class Lcom/samsung/android/widget/SemTipPopup$TipWindow;
.super Landroid/widget/PopupWindow;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipWindow"
.end annotation


# instance fields
.field private blacklist mIsDismissing:Z

.field private blacklist mIsUsingDismissAnimation:Z

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDismissing(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDismissing(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setPivot(FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetUseDismissAnimation(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setUseDismissAnimation(Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 1849
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    .line 1844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    .line 1845
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    .line 1846
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    .line 1850
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method static synthetic blacklist access$001(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 1842
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private blacklist animateViewOut()V
    .locals 11

    .line 1871
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1873
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iget v9, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4f5c29    # 0.81f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4f5c29    # 0.81f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1875
    .local v1, "animScale":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetINTERPOLATOR_ELASTIC_CUSTOM()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1876
    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1878
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1879
    .local v4, "animAlpha":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetINTERPOLATOR_SINE_IN_OUT_33()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1880
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1882
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1883
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1884
    new-instance v2, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;-><init>(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1901
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1902
    return-void
.end method

.method private blacklist setPivot(FF)V
    .locals 0
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .line 1857
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    .line 1858
    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    .line 1859
    return-void
.end method

.method private blacklist setUseDismissAnimation(Z)V
    .locals 0
    .param p1, "useAnimation"    # Z

    .line 1853
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    .line 1854
    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .locals 1

    .line 1863
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 1864
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V

    goto :goto_0

    .line 1866
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1868
    :goto_0
    return-void
.end method
