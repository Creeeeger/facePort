.class public interface abstract Lcom/android/wm/shell/draganddrop/IDragLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x1

    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    return-void
.end method
