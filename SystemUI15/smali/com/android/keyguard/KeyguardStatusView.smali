.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

.field public mDrawAlpha:I

.field public mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field public mMediaHostContainer:Landroid/view/View;

.field public mStatusViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$NnkgDh6l21JxDlPpQeOyBKg8g94(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Canvas;)Lkotlin/Unit;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    return-void
.end method


# virtual methods
.method public final animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyguardStatusView does not support ViewPropertyAnimator. Use PropertyAnimator instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    new-instance v1, Lcom/android/keyguard/KeyguardStatusView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    sget-object v2, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardStatusView"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    const v0, 0x7f0a0c21

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0582

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->$r8$clinit:I

    const v1, 0x7f130834

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    new-instance v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v2, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    const v0, 0x7f0a05c7

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    const v0, 0x7f0a0c22

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mMediaHostContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    iput v0, v1, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    const-string v0, "KeyguardStatusView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    const/4 p0, 0x1

    return p0
.end method
