.class Lcom/samsung/android/multiwindow/DragAndDropHelper$1;
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
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/DragAndDropHelper;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInitialDropTargetVisible()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fgetmInitialDropTargetVisible(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$onConnected$0$com-samsung-android-multiwindow-DragAndDropHelper$1()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DragAndDropHelper"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$mdismiss(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    .line 49
    return-void
.end method

.method public blacklist onConnected(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "serverProxy"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DragAndDropHelper"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fputmServerProxy(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0, p2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$fputmDisplayId(Lcom/samsung/android/multiwindow/DragAndDropHelper;I)V

    .line 53
    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DragAndDropHelper"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->-$$Nest$mdismiss(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    .line 59
    return-void
.end method
