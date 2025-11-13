.class public abstract Lcom/android/wm/shell/windowdecor/WindowDecoration;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mCaptionContainerSurface:Landroid/view/SurfaceControl;

.field public final mCaptionInsetsRect:Landroid/graphics/Rect;

.field public mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

.field public final mContext:Landroid/content/Context;

.field public mDecorWindowContext:Landroid/content/Context;

.field public mDecorationContainerSurface:Landroid/view/SurfaceControl;

.field public mDisplay:Landroid/view/Display;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDragResizeInputSurface:Landroid/view/SurfaceControl;

.field public final mExclusionRegion:Landroid/graphics/Region;

.field public mIsCaptionTransparent:Z

.field public mIsCaptionVisible:Z

.field public mIsDexEnabled:Z

.field public mIsDexMode:Z

.field public mIsNewDexMode:Z

.field public mIsRemoving:Z

.field public mLayoutResId:I

.field public final mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

.field public final mOwner:Landroid/os/Binder;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

.field public final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

.field public final mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

.field public mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mTmpColor:[F

.field public mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

.field public mWindowDecorConfig:Landroid/content/res/Configuration;

.field public mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 11

    new-instance v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {v9, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    invoke-direct {v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/window/WindowContainerTransaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionVisible:Z

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    const-string p3, "WindowDecoration"

    invoke-virtual {p1, p5, p3}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p10, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    :cond_0
    return-void
.end method

.method public static calculateBoundingRectLocal(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected alignment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public asMultitaskingWindowDecoration()Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 2

    const-string v0, "WindowDecoration#close"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public getCaptionViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WindowDecoration"

    return-object p0
.end method

.method public abstract relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V
.end method

.method public releaseViews(Landroid/window/WindowContainerTransaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    move v2, v3

    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->remove(Landroid/window/WindowContainerTransaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    :cond_5
    return-void
.end method

.method public updateCaptionContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 2

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caption container of Task="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v0, "WindowDecoration.updateCaptionContainerSurface"

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz p2, :cond_1

    instance-of p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    iget v0, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    iget v1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    iget p3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method

.method public updateDecorationContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decor container of Task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowDecoration.updateDecorationContainerSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    iget v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget p2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public updateTaskSurface(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 5

    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mSetTaskPositionAndCrop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v2, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v3, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v2, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget p4, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {p3, v1, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p4, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget v2, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p4, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p4

    const/4 v0, 0x5

    if-ne p4, v0, :cond_4

    sget-boolean p4, Lcom/android/wm/shell/shared/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v3

    const/4 v1, 0x2

    aput p4, v0, v1

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-virtual {p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    int-to-float p1, p1

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/android/wm/shell/shared/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    :goto_1
    return-void
.end method

.method public final updateViewHost(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 12

    const-string v0, "CaptionViewHostLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    iget v2, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    add-int/2addr v2, v1

    iget v3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLimitTouchRegionToSystemAreas:Z

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v3

    if-nez v0, :cond_2

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v6, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    iget v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v6, v7, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->calculateBoundingRectLocal(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, v6}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v5, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mDisplayExclusionRegion:Landroid/graphics/Region;

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget v2, v1, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Region;->translate(II)V

    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v7, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    iget v8, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    const/4 v11, -0x2

    const/4 v9, 0x2

    const/16 v10, 0x8

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caption of Task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iget v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const-string v2, "Trying to sync a null Transaction"

    if-nez v1, :cond_8

    const-string v1, "CaptionViewHostLayout-new"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-boolean v3, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    iget-boolean p1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLimitTouchRegionToSystemAreas:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1, p2, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;->setTouchRegion(Landroid/view/SurfaceControlViewHost;Landroid/graphics/Region;)V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p1, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :cond_8
    const-string p3, "CaptionViewHostLayout-relayout"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean p3, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz p3, :cond_a

    if-eqz p1, :cond_9

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p3

    invoke-interface {p3, p1}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    iget-boolean p1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLimitTouchRegionToSystemAreas:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1, p2, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;->setTouchRegion(Landroid/view/SurfaceControlViewHost;Landroid/graphics/Region;)V

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_6
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateViewsAndSurfaces(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_0

    iput-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_0
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mDisplayExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    iget v10, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iput v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v11, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews(Landroid/window/WindowContainerTransaction;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateViewsAndSurfaces: task surface null or empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_3
    if-nez v5, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layoutResId and rootView can\'t both be invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iput-object v5, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    if-eqz v5, :cond_6

    iget v10, v5, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_6
    move v10, v7

    :goto_1
    if-eqz v5, :cond_7

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    goto :goto_2

    :cond_7
    move v5, v7

    :goto_2
    new-instance v11, Landroid/content/res/Configuration;

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    :cond_8
    invoke-direct {v11, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mWindowDecorConfig:Landroid/content/res/Configuration;

    if-eqz v12, :cond_9

    goto :goto_3

    :cond_9
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    :goto_3
    iput-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v12, :cond_a

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v13

    if-nez v13, :cond_a

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v13, v14, :cond_a

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    iput v14, v13, Landroid/content/res/Configuration;->densityDpi:I

    :cond_a
    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    iget v14, v13, Landroid/content/res/Configuration;->densityDpi:I

    iget v13, v13, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0x30

    const/4 v15, 0x4

    if-ne v10, v14, :cond_f

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v10, v14, :cond_f

    iget v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    if-ne v9, v10, :cond_f

    if-ne v5, v13, :cond_f

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    if-eqz v5, :cond_f

    if-eqz v12, :cond_e

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    invoke-virtual {v11, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v9

    and-int/2addr v9, v15

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v9, :cond_c

    iget v9, v11, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v10, v5, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v9, v10, :cond_c

    goto :goto_4

    :cond_c
    iget-object v9, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v9

    iget-object v10, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    if-eq v9, v10, :cond_d

    goto :goto_4

    :cond_d
    sget-boolean v9, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    if-eqz v9, :cond_e

    invoke-virtual {v11}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v9

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v5

    if-eq v9, v5, :cond_e

    goto :goto_4

    :cond_e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v5, :cond_12

    if-eqz p7, :cond_12

    :cond_f
    :goto_4
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews(Landroid/window/WindowContainerTransaction;)V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v9}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_10

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    invoke-virtual {v5, v9}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iput-object v8, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    goto :goto_5

    :cond_10
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v9}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    if-eq v5, v9, :cond_11

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/Context;->updateDisplay(I)V

    :cond_11
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/Context;->setTheme(I)V

    iget v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v9, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    :cond_12
    iget-object v5, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v5, :cond_13

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v9, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    :cond_13
    :goto_5
    iget-object v5, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v5, :cond_14

    return-void

    :cond_14
    if-eqz v12, :cond_15

    goto :goto_8

    :cond_15
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v10, v9}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v9

    move v10, v7

    :goto_6
    invoke-virtual {v9}, Landroid/view/InsetsState;->sourceSize()I

    move-result v11

    if-ge v10, v11, :cond_18

    invoke-virtual {v9, v10}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v13

    if-eq v12, v13, :cond_16

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_16
    invoke-virtual {v11}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionVisible:Z

    if-eqz v9, :cond_17

    move v9, v7

    goto :goto_7

    :cond_17
    const/16 v9, 0x8

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->getCaptionViewId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_8
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_1d

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v9, :cond_1d

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    if-eq v9, v12, :cond_19

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-ne v9, v12, :cond_1d

    :cond_19
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v11, :cond_1c

    if-eq v9, v10, :cond_1b

    if-eq v9, v15, :cond_1a

    move v9, v12

    goto :goto_9

    :cond_1a
    move v9, v10

    goto :goto_9

    :cond_1b
    move v9, v11

    goto :goto_9

    :cond_1c
    move v9, v7

    :goto_9
    if-eq v9, v12, :cond_1d

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v5, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object v5

    :cond_1d
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    instance-of v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v9, :cond_1e

    move-object v12, v0

    check-cast v12, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v12, v12, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v12}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_b

    :cond_1e
    iget-object v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v12, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v13, :cond_1f

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v13}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v13

    goto :goto_a

    :cond_1f
    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    :goto_a
    invoke-interface {v12, v13}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    :goto_b
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    invoke-static {v12, v13}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v13

    iput v13, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v13, :cond_22

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    iget v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    if-eqz v14, :cond_20

    iget v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    invoke-static {v14}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v14

    if-eqz v14, :cond_20

    iget v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    invoke-static {v12, v14}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v14

    iput v14, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    sub-int/2addr v14, v7

    div-int/2addr v14, v10

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    add-int/2addr v14, v7

    iput v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    if-eqz v13, :cond_20

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    const v14, 0x7f070fa2

    invoke-static {v12, v14}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v12

    sub-int/2addr v7, v12

    iput v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    :cond_20
    iget v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    sub-int/2addr v7, v12

    div-int/2addr v7, v10

    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    if-eqz v13, :cond_24

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    if-nez v7, :cond_21

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$Builder;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "DragResizeInput of Task="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    const/16 v12, 0x4e21

    invoke-virtual {v7, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_21
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    iget v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v13, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {v7, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d

    :cond_22
    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    if-eqz v7, :cond_23

    invoke-static {v12, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v7

    goto :goto_c

    :cond_23
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_c
    iput v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    iget v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    sub-int/2addr v12, v7

    div-int/2addr v12, v10

    iput v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    :cond_24
    :goto_d
    invoke-virtual {v0, v2, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateDecorationContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateCaptionContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionVisible:Z

    if-nez v7, :cond_25

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    if-eqz v5, :cond_33

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->remove(Landroid/window/WindowContainerTransaction;)V

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    goto/16 :goto_12

    :cond_25
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v5, :cond_26

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MD_FORCE_ENABLE_DESKTOP_MODE:Z

    if-nez v5, :cond_26

    iget v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10503ab

    invoke-static {v5, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v5

    iget v7, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iput v7, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_e

    :cond_26
    iget v5, v12, Landroid/graphics/Rect;->top:I

    iget v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    add-int/2addr v5, v7

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v5, :cond_27

    iget-boolean v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v5, :cond_27

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-ne v5, v11, :cond_27

    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    add-int/2addr v5, v7

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    :cond_27
    :goto_e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v5, :cond_28

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gez v5, :cond_28

    iget v5, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    :cond_28
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    if-eqz v5, :cond_29

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_29
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2a

    move-object v13, v8

    goto :goto_10

    :cond_2a
    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    and-int/2addr v7, v15

    if-eqz v7, :cond_2b

    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v12}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_2b
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v10, v5, [Landroid/graphics/Rect;

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v5, :cond_2d

    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    iget v8, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v14, v8, v12}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->calculateBoundingRectLocal(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    aput-object v8, v10, v13

    iget v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_2c

    iget-object v14, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v14, v8, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_2c
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    const/4 v15, 0x4

    goto :goto_f

    :cond_2d
    move-object v13, v10

    :goto_10
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-eqz v9, :cond_2e

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isImmersiveMode()Z

    move-result v7

    if-eqz v7, :cond_2e

    move v7, v11

    goto :goto_11

    :cond_2e
    const/4 v7, 0x0

    :goto_11
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v8, :cond_32

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MD_FORCE_ENABLE_DESKTOP_MODE:Z

    if-nez v8, :cond_32

    if-nez v7, :cond_30

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v7

    if-nez v7, :cond_2f

    if-ne v5, v11, :cond_32

    :cond_2f
    iget v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_30
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    if-eqz v5, :cond_31

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->remove(Landroid/window/WindowContainerTransaction;)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    :cond_31
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_12

    :cond_32
    new-instance v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    iget v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInsetSourceFlags:I

    const/4 v15, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;-><init>(Landroid/window/WindowContainerToken;Landroid/os/Binder;Landroid/graphics/Rect;[Landroid/graphics/Rect;II)V

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowDecorationInsets:Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->addOrUpdate(Landroid/window/WindowContainerTransaction;)V

    :cond_33
    :goto_12
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateTaskSurface(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    return-void
.end method
