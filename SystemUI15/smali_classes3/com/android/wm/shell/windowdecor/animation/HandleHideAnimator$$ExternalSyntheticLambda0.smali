.class public final synthetic Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHide:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
