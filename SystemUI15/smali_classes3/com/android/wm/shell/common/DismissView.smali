.class public Lcom/android/wm/shell/common/DismissView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityTextResId:I

.field public mCurrentFontScale:F

.field public final mDismissArea:Landroid/graphics/Rect;

.field public mDismissType:I

.field public mElevation:F

.field public mEnterAnimation:Landroid/view/animation/Animation;

.field public mFocusChangeHapticDisabled:Z

.field public final mHiddenDropTargetArea:Landroid/graphics/Rect;

.field public mHideAnimationEnd:Ljava/lang/Runnable;

.field public mIconView:Landroid/widget/ImageView;

.field public mInsideHideAnimation:Landroid/view/animation/Animation;

.field public mIsEnterDismissButton:Z

.field public mIsNightModeOn:Z

.field public mOutsideHideAnimation:Landroid/view/animation/Animation;

.field public mSineOut60:Landroid/view/animation/Interpolator;

.field public mTextView:Landroid/widget/TextView;

.field public mVisible:Z

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/common/DismissView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/common/DismissView;->mDismissType:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/wm/shell/common/DismissView;->mAccessibilityTextResId:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final hide(Ljava/lang/Runnable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    const-string v1, "DismissView"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "already mVisible=false but the callback should be run."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mHideAnimationEnd:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    const-string v0, "hide"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    :goto_1
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mHideAnimationEnd:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/wm/shell/common/DismissView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DismissView$2;-><init>(Lcom/android/wm/shell/common/DismissView;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/common/DismissView;->mIsNightModeOn:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mIsNightModeOn:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissView;->updateNightModeUI()V

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/common/DismissView;->mCurrentFontScale:F

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/android/wm/shell/common/DismissView;->mCurrentFontScale:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070340

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/common/DismissView;->mCurrentFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    div-float/2addr p1, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_1
    double-to-float p1, v2

    goto :goto_2

    :cond_2
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/common/DismissView;->mDismissType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissView;->setDismissType(I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mSineOut60:Landroid/view/animation/Interpolator;

    const v0, 0x7f0a0397

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0396

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/DismissView;->mElevation:F

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/wm/shell/common/DismissView;->mCurrentFontScale:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mIsNightModeOn:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010199

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mEnterAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/wm/shell/common/DismissView$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/common/DismissView$1;-><init>(Lcom/android/wm/shell/common/DismissView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f01019e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010198

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070340

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/common/DismissView;->mCurrentFontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_1
    double-to-float v0, v2

    goto :goto_2

    :cond_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissView;->updateNightModeUI()V

    return-void
.end method

.method public final setDismissType(I)V
    .locals 2

    iput p1, p0, Lcom/android/wm/shell/common/DismissView;->mDismissType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130542

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130541

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f13008e

    iput p1, p0, Lcom/android/wm/shell/common/DismissView;->mAccessibilityTextResId:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateMarginBottom()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "taskbar_style_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissView;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateNightModeUI()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x7f080767

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06012a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final updateResources(Z)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/DismissView;->mElevation:F

    if-eqz p1, :cond_0

    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    if-eqz p1, :cond_1

    const v0, 0x7f080768

    goto :goto_0

    :cond_1
    const v0, 0x7f080767

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f06012e

    goto :goto_1

    :cond_2
    const v2, 0x7f06012d

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_3

    const p1, 0x7f06012b

    goto :goto_2

    :cond_3
    const p1, 0x7f06012a

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final updateView(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/DismissView;->updateView(ZZ)V

    return-void
.end method

.method public final updateView(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f933333    # 1.15f

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mSineOut60:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissView;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p2, p0, Lcom/android/wm/shell/common/DismissView;->mFocusChangeHapticDisabled:Z

    if-nez p2, :cond_8

    const/16 p2, 0x29

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    goto :goto_6

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissView;->updateResources(Z)V

    if-eqz p1, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_8
    :goto_6
    iget p2, p0, Lcom/android/wm/shell/common/DismissView;->mDismissType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    invoke-interface {p2, v0}, Landroid/view/IWindowManager;->setDragSurfaceToOverlay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p2

    const-string v0, "Failed to setDragSurfaceToOverlay."

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    iget-boolean p2, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eq p2, p1, :cond_a

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    :cond_a
    return-void
.end method
