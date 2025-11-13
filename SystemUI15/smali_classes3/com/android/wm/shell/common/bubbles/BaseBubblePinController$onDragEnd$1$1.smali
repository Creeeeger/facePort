.class public final Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;->this$0:Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->removeDropTargetView(Landroid/view/View;)V

    return-void
.end method
