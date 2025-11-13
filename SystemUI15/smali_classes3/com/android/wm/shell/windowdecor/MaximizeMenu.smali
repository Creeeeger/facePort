.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;


# instance fields
.field public final cornerRadius:F

.field public final decorWindowContext:Landroid/content/Context;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public leash:Landroid/view/SurfaceControl;

.field public maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

.field public maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

.field public final menuHeight:I

.field public final menuPadding:I

.field public final menuPosition:Landroid/graphics/PointF;

.field public final menuWidth:I

.field public final onClickListener:Landroid/view/View$OnClickListener;

.field public final onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field public final onTouchListener:Landroid/view/View$OnTouchListener;

.field public final rootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final transactionSupplier:Ljava/util/function/Supplier;

.field public viewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->Companion:Lcom/android/wm/shell/windowdecor/MaximizeMenu$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnGenericMotionListener;Landroid/view/View$OnTouchListener;Landroid/content/Context;Landroid/graphics/PointF;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnGenericMotionListener;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/content/Context;",
            "Landroid/graphics/PointF;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->rootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->decorWindowContext:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPosition:Landroid/graphics/PointF;

    iput-object p10, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->transactionSupplier:Ljava/util/function/Supplier;

    const p1, 0x7f07031b

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->loadDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->cornerRadius:F

    const p1, 0x7f07031e

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->loadDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuWidth:I

    const p1, 0x7f07031c

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->loadDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuHeight:I

    const p1, 0x7f07031f

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->loadDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPadding:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnGenericMotionListener;Landroid/view/View$OnTouchListener;Landroid/content/Context;Landroid/graphics/PointF;Ljava/util/function/Supplier;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$1;->INSTANCE:Lcom/android/wm/shell/windowdecor/MaximizeMenu$1;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnGenericMotionListener;Landroid/view/View$OnTouchListener;Landroid/content/Context;Landroid/graphics/PointF;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final loadDimensionPixelSize(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->decorWindowContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final setSnapButtonsColorOnHover(Landroid/view/MotionEvent;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f0a06b0

    if-eq p2, v1, :cond_2

    const v1, 0x7f0a06b1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0a06b2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz p0, :cond_3

    sget-object p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->RIGHT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->updateSplitSnapSelection(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz p0, :cond_3

    sget-object p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->LEFT:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->updateSplitSnapSelection(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;)V

    :cond_3
    :goto_1
    return-void
.end method
