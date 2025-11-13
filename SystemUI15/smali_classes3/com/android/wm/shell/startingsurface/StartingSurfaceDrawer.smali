.class public final Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

.field public final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field final mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field final mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

.field final mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

.field final mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

.field public final mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

.field public final mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {v9}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;-><init>()V

    iput-object v9, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    new-instance v10, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {v10}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;-><init>()V

    iput-object v10, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iput-object v7, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/hardware/display/DisplayManager;

    new-instance v12, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    move-object/from16 v1, p3

    move-object/from16 v13, p4

    invoke-direct {v12, v8, v1, v13, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;-><init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v12, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    new-instance v14, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    move-object v1, v14

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iput-object v14, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    new-instance v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    invoke-direct {v1, v7, v9}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iput-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    new-instance v9, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    move-object v1, v9

    move-object v6, v10

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v9, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    new-instance v7, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    move-object v1, v7

    move-object v2, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v7, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    return-void
.end method
