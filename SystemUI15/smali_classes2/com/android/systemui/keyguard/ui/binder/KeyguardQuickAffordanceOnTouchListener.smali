.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;


# instance fields
.field public final downDisplayCoords$delegate:Lkotlin/Lazy;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public longPressAnimator:Landroid/view/ViewPropertyAnimator;

.field public final longPressDurationMs:J

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final view:Landroid/view/View;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->longPressDurationMs:J

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$downDisplayCoords$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$downDisplayCoords$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->longPressAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->longPressAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->cancel()V

    move v0, v1

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;->isUsingAccurateTool$default(Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v2, p2, p1, v1}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->cancel()V

    goto/16 :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;->isUsingAccurateTool$default(Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->configKey:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v2, p2, p1, v1}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->configKey:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$dispatchClick$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->cancel()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->configKey:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->downDisplayCoords$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;->isUsingAccurateTool$default(Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener$Companion;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->longPressDurationMs:J

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;->longPressAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_5
    :goto_0
    return v0
.end method
