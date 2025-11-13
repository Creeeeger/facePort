.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->hideResizeVeil()V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    const v0, 0x7f0d00dd

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    check-cast p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverDisabled:Z

    :goto_0
    return-void
.end method

.method public final onAnimationStart(ILandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 15

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->loadAppInfoIfNeeded()V

    new-instance v1, Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeilBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    :goto_0
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->showVeil(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    const v2, 0x7f0d00dd

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    check-cast v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->cancelHoverAnimation()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->hoverDisabled:Z

    :goto_1
    return-void
.end method

.method public final onBoundsChange(ILandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->updateResizeVeil(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
