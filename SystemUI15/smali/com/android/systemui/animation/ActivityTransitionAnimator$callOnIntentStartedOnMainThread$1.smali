.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_callOnIntentStartedOnMainThread:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $willAnimate:Z

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->$this_callOnIntentStartedOnMainThread:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-boolean p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->$willAnimate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->$this_callOnIntentStartedOnMainThread:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$callOnIntentStartedOnMainThread$1;->$willAnimate:Z

    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    return-void
.end method
