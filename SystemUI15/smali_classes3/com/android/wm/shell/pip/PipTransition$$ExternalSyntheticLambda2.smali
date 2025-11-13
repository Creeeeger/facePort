.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip$1(Z)V

    :cond_0
    return-void
.end method
