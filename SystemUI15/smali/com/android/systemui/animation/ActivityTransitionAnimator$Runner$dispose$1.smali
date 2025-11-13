.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$dispose$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    return-void
.end method
