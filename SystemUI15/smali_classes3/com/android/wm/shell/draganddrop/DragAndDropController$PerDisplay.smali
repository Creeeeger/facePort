.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public activeDragCount:I

.field public final context:Landroid/content/Context;

.field public final displayId:I

.field public final dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

.field public dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

.field public final dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

.field public dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

.field public dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

.field public final executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field public hasDrawn:Z

.field public hideRequested:Z

.field public isHandlingDrag:Z

.field public final mHiddenDropTargetArea:Landroid/graphics/Rect;

.field public final rootView:Landroid/widget/FrameLayout;

.field public final smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

.field public final visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

.field public windowVisibility:I

.field public final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V
    .locals 9

    new-instance v6, Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-direct {v6, p2}, Lcom/android/wm/shell/draganddrop/SmartTipController;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/wm/shell/common/DnDSnackBarController;

    invoke-direct {v7, p2}, Lcom/android/wm/shell/common/DnDSnackBarController;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-direct {v8, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/common/DnDSnackBarController;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/common/DnDSnackBarController;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz p8, :cond_1

    iget-object p2, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object p3, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;-><init>(I)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    :goto_2
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hasDrawn:Z

    return-void
.end method
