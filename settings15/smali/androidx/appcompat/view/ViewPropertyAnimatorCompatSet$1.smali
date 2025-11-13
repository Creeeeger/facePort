.class public final Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mProxyEndCount:I

.field public mProxyStarted:Z

.field public final synthetic this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    iput-boolean v0, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    :cond_1
    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    iget-object p0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object p0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart()V

    :cond_1
    return-void
.end method
