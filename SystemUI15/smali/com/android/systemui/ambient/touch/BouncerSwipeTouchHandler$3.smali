.class public final Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$3;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$3;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$DreamEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
