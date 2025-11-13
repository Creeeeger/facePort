.class public final Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/animation/TransitionLayout;->access$setUpdateScheduled$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {v0, v1}, Lcom/android/systemui/util/animation/TransitionLayout;->access$setPreDrawApplicatorRegistered$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->access$applyCurrentState(Lcom/android/systemui/util/animation/TransitionLayout;)V

    const/4 p0, 0x1

    return p0
.end method
