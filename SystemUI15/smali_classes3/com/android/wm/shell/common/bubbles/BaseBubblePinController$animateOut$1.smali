.class public final Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $endAction:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;->$endAction:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;->$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

    return-void
.end method
