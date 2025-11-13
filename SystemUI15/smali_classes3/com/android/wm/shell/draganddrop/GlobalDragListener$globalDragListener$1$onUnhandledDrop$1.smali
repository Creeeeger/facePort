.class public final Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Landroid/window/IUnhandledDragCallback;

.field public final synthetic $event:Landroid/view/DragEvent;

.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->$event:Landroid/view/DragEvent;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->$callback:Landroid/window/IUnhandledDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->$event:Landroid/view/DragEvent;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;->$callback:Landroid/window/IUnhandledDragCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V

    return-void
.end method
