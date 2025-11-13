.class public final Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $shouldResetLocation:Z

.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;


# direct methods
.method public constructor <init>(ZLcom/android/wm/shell/common/bubbles/BaseBubblePinController;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;->$shouldResetLocation:Z

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;->$shouldResetLocation:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->RIGHT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->updateLocation(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V

    :cond_1
    return-void
.end method
