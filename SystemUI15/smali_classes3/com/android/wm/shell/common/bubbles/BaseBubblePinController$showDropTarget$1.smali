.class public final Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $location:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

.field public final synthetic $targetView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->$location:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iput-object p3, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iget-object v1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->$location:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->updateLocation(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;->$targetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateIn(Landroid/view/View;)V

    return-void
.end method
