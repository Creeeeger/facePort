.class public final Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
