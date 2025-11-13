.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClingLayout:Landroid/view/ViewGroup;

.field public final mColor:Landroid/graphics/drawable/ColorDrawable;

.field public mColorAnim:Landroid/animation/ValueAnimator;

.field public final mConfirm:Ljava/lang/Runnable;

.field public final mInsetsListener:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$2;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mReceiver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;

.field public final mUpdateLayoutRunnable:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$1;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance p2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$1;

    new-instance p2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$2;

    new-instance p2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;

    iput-object p3, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object v1, v1, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07046f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    div-int/lit8 v3, v1, 0x2

    sub-int v4, v0, v3

    add-int/2addr v3, v0

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz p0, :cond_2

    if-ltz v1, :cond_1

    if-lez v0, :cond_2

    if-eqz v3, :cond_2

    :cond_1
    const v0, 0x7f0a0528

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object v1, v1, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    const v2, 0x7f0d0131

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a0834

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07046f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, -0x2

    const/16 v5, 0x31

    invoke-direct {v3, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, -0x3d400000    # -96.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
