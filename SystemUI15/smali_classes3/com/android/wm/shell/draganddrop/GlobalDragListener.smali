.class public final Lcom/android/wm/shell/draganddrop/GlobalDragListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

.field public final globalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;

.field public final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final wmService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "GlobalDragListener"

    sput-object v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->wmService:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;-><init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->globalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;

    return-void
.end method


# virtual methods
.method public final onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v1, "onCrossWindowDrop: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public final onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    .locals 7

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->nextInt()I

    move-result v0

    const-wide/16 v1, 0x20

    const-string v3, "GlobalDragListener.onUnhandledDrop"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "onUnhandledDrop: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/window/IUnhandledDragCallback;->notifyUnhandledDropComplete(Z)V

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_0
    new-instance v1, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;

    invoke-direct {v1, p2, v0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;-><init>(Landroid/window/IUnhandledDragCallback;I)V

    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragFlags()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/wm/shell/draganddrop/DragUtils;->getLaunchIntent(Landroid/content/ClipData;I)Landroid/app/PendingIntent;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
