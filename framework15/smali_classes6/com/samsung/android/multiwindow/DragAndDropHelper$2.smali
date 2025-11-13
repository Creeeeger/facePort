.class Lcom/samsung/android/multiwindow/DragAndDropHelper$2;
.super Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHiddenDropTargetArea()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fgetmHiddenDropTargetArea(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInitialDropTargetVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fgetmInitialDropTargetVisible(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z

    move-result v0

    return v0
.end method

.method public blacklist onConnected(Landroid/os/IBinder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fgetmDeathRecipient(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fputmServerProxy(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0, p2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fputmDisplayId(Lcom/samsung/android/multiwindow/DragAndDropHelper;I)V

    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$mdismiss(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    return-void
.end method
