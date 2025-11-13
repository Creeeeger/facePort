.class public final Lcom/android/systemui/unfold/UnfoldHapticsPlayer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final effect$delegate:Lkotlin/Lazy;

.field public isFirstAnimationAfterUnfold:Z

.field public lastTransitionProgress:F

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final touchVibrationAttributes:Landroid/os/VibrationAttributes;

.field public final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ljava/util/concurrent/Executor;Landroid/os/Vibrator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->vibrator:Landroid/os/Vibrator;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->touchVibrationAttributes:Landroid/os/VibrationAttributes;

    if-eqz p5, :cond_0

    check-cast p3, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object p3, p3, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHapticsEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$1;-><init>(Lcom/android/systemui/unfold/UnfoldHapticsPlayer;)V

    invoke-interface {p2, p1, p4}, Lcom/android/systemui/unfold/updates/FoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->lastTransitionProgress:F

    new-instance p1, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;-><init>(Lcom/android/systemui/unfold/UnfoldHapticsPlayer;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->effect$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->lastTransitionProgress:F

    return-void
.end method

.method public final onTransitionFinishing()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->isFirstAnimationAfterUnfold:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->isFirstAnimationAfterUnfold:Z

    iget v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->lastTransitionProgress:F

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->effect$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->touchVibrationAttributes:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_1
    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->lastTransitionProgress:F

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;->lastTransitionProgress:F

    return-void
.end method
