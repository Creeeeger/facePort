.class public final Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $traceCookie:I

.field public final synthetic $wmCallback:Landroid/window/IUnhandledDragCallback;


# direct methods
.method public constructor <init>(Landroid/window/IUnhandledDragCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->$wmCallback:Landroid/window/IUnhandledDragCallback;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->$traceCookie:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Notifying onUnhandledDrop complete: %b"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->$wmCallback:Landroid/window/IUnhandledDragCallback;

    invoke-interface {p1, v0}, Landroid/window/IUnhandledDragCallback;->notifyUnhandledDropComplete(Z)V

    iget p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->$traceCookie:I

    const-wide/16 v0, 0x20

    const-string p1, "GlobalDragListener.onUnhandledDrop"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method
