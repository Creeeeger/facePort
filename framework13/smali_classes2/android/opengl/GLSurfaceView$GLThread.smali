.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private greylist mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExited:Z

.field private final blacklist mFinishDrawingRunnable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFinishedCreatingEglSurface:Z

.field private greylist-max-o mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasSurface:Z

.field private greylist-max-o mHaveEglContext:Z

.field private greylist-max-o mHaveEglSurface:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mRenderComplete:Z

.field private greylist-max-o mRenderMode:I

.field private greylist-max-o mRequestPaused:Z

.field private greylist-max-o mRequestRender:Z

.field private greylist-max-o mShouldExit:Z

.field private greylist-max-o mShouldReleaseEglContext:Z

.field private greylist-max-o mSizeChanged:Z

.field private greylist-max-o mSurfaceIsBad:Z

.field private blacklist mTag:Ljava/lang/String;

.field private greylist-max-o mWaitingForSurface:Z

.field private greylist-max-o mWantRenderNotification:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1264
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1260
    const-string v0, "GLThread"

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    .line 1863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1864
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    .line 1265
    const/4 v1, 0x0

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1266
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1267
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1268
    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1269
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1270
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1271
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->setTag()V

    .line 1272
    return-void
.end method

.method private greylist-max-o guardedRun()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1318
    move-object/from16 v1, p0

    new-instance v0, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1320
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1321
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1324
    const/4 v2, 0x0

    .line 1325
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1326
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1327
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1328
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1329
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1330
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1331
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1332
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1333
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1334
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1335
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1336
    .local v13, "event":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 1339
    .local v14, "finishDrawingRunnable":Ljava/lang/Runnable;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 1341
    :goto_1
    :try_start_1
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v0, :cond_0

    .line 1342
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1637
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16

    .line 1638
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1639
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1640
    monitor-exit v16

    .line 1342
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1519
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_13

    .line 1345
    :cond_0
    :try_start_4
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    if-nez v0, :cond_1

    .line 1346
    :try_start_5
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 1347
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1351
    .end local v0    # "event":Ljava/lang/Runnable;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    .line 1352
    .local v0, "pausing":Z
    :try_start_6
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v18, v0

    .end local v0    # "pausing":Z
    .local v18, "pausing":Z
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    if-eq v2, v0, :cond_2

    .line 1353
    move v2, v0

    .line 1354
    .end local v18    # "pausing":Z
    .local v2, "pausing":Z
    :try_start_7
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1355
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    goto :goto_2

    .line 1352
    .end local v2    # "pausing":Z
    .restart local v18    # "pausing":Z
    :cond_2
    move/from16 v2, v18

    .line 1362
    .end local v18    # "pausing":Z
    .restart local v2    # "pausing":Z
    :goto_2
    :try_start_8
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-eqz v0, :cond_3

    .line 1366
    :try_start_9
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1367
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1369
    const/4 v10, 0x1

    .line 1373
    :cond_3
    if-eqz v6, :cond_4

    .line 1374
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1375
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1376
    const/4 v0, 0x0

    move v6, v0

    .line 1380
    :cond_4
    if-eqz v2, :cond_5

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    .line 1384
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1388
    :cond_5
    if-eqz v2, :cond_7

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_7

    .line 1389
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1390
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-nez v0, :cond_6

    .line 1391
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z

    move-result v18

    .line 1392
    .local v18, "preserveEglContextOnPause":Z
    :goto_3
    if-nez v18, :cond_7

    .line 1393
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    .line 1401
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v18    # "preserveEglContextOnPause":Z
    :cond_7
    :try_start_a
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-nez v0, :cond_9

    :try_start_b
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_9

    .line 1405
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8

    .line 1406
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1408
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1409
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1410
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 1414
    :cond_9
    :try_start_c
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v0, :cond_a

    :try_start_d
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_a

    .line 1418
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1419
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    :cond_a
    if-eqz v9, :cond_b

    .line 1426
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1427
    const/4 v9, 0x0

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1429
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1433
    :cond_b
    :try_start_e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1434
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "pausing":Z
    .local v18, "pausing":Z
    if-le v0, v2, :cond_c

    .line 1435
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    move/from16 v19, v3

    .end local v3    # "createEglContext":Z
    .local v19, "createEglContext":Z
    :try_start_f
    const-string v3, "mFinishDrawingRunnable.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1434
    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :cond_c
    move/from16 v19, v3

    .end local v3    # "createEglContext":Z
    .restart local v19    # "createEglContext":Z
    goto :goto_4

    .end local v18    # "pausing":Z
    .end local v19    # "createEglContext":Z
    .restart local v2    # "pausing":Z
    .restart local v3    # "createEglContext":Z
    :cond_d
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1437
    .end local v2    # "pausing":Z
    .end local v3    # "createEglContext":Z
    .restart local v18    # "pausing":Z
    .restart local v19    # "createEglContext":Z
    :goto_4
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v14, v0

    .line 1438
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1433
    .end local v18    # "pausing":Z
    .end local v19    # "createEglContext":Z
    .restart local v2    # "pausing":Z
    .restart local v3    # "createEglContext":Z
    :cond_e
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1443
    .end local v2    # "pausing":Z
    .end local v3    # "createEglContext":Z
    .restart local v18    # "pausing":Z
    .restart local v19    # "createEglContext":Z
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1446
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-nez v0, :cond_10

    .line 1447
    if-eqz v10, :cond_f

    .line 1448
    const/4 v0, 0x0

    move v10, v0

    move/from16 v3, v19

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_6

    .line 1451
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_f
    :try_start_10
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1455
    nop

    .line 1456
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 1457
    const/4 v3, 0x1

    .line 1459
    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :try_start_12
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    goto :goto_6

    .line 1452
    .end local v3    # "createEglContext":Z
    .restart local v19    # "createEglContext":Z
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "t":Ljava/lang/RuntimeException;
    :try_start_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1454
    nop

    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v19    # "createEglContext":Z
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 1446
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v19    # "createEglContext":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_10
    move/from16 v3, v19

    .line 1463
    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :goto_6
    :try_start_14
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_11

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1465
    const/4 v0, 0x1

    .line 1466
    .end local v4    # "createEglSurface":Z
    .local v0, "createEglSurface":Z
    const/4 v2, 0x1

    .line 1467
    .end local v5    # "createGlInterface":Z
    .local v2, "createGlInterface":Z
    const/4 v4, 0x1

    move v5, v2

    move v7, v4

    move v4, v0

    .line 1470
    .end local v0    # "createEglSurface":Z
    .end local v2    # "createGlInterface":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :cond_11
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_21

    .line 1471
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_12

    .line 1472
    const/4 v7, 0x1

    .line 1473
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    .line 1474
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1483
    const/4 v4, 0x1

    .line 1485
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1487
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1488
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1489
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-eqz v2, :cond_13

    .line 1490
    const/4 v2, 0x1

    move v8, v2

    .line 1519
    .end local v18    # "pausing":Z
    :cond_13
    :goto_7
    :try_start_15
    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1521
    if-eqz v13, :cond_14

    .line 1522
    :try_start_16
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1523
    const/4 v13, 0x0

    .line 1524
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1527
    :cond_14
    if-eqz v4, :cond_16

    .line 1531
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1532
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 1533
    const/4 v15, 0x1

    :try_start_17
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1534
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1535
    monitor-exit v2

    .line 1544
    const/4 v2, 0x0

    move v4, v2

    .end local v4    # "createEglSurface":Z
    .local v2, "createEglSurface":Z
    goto :goto_8

    .line 1535
    .end local v2    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_18
    throw v0

    .line 1537
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_15
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 1538
    const/4 v15, 0x1

    :try_start_19
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1539
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1540
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1541
    monitor-exit v2

    .line 1542
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1541
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_1a
    throw v0

    .line 1547
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_16
    :goto_8
    if-eqz v5, :cond_17

    .line 1548
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1550
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    goto :goto_9

    .line 1547
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_17
    move-object/from16 v2, v17

    .line 1553
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_9
    move v15, v4

    move/from16 v16, v5

    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .local v15, "createEglSurface":Z
    .local v16, "createGlInterface":Z
    const-wide/16 v4, 0x8

    if-eqz v3, :cond_19

    .line 1557
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    move-object/from16 v17, v0

    .line 1558
    .local v17, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v17, :cond_18

    .line 1560
    :try_start_1b
    const-string v0, "onSurfaceCreated"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1561
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v4, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v4, v4, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1563
    const-wide/16 v4, 0x8

    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1564
    goto :goto_a

    .line 1563
    :catchall_4
    move-exception v0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1564
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1566
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_18
    :goto_a
    const/4 v0, 0x0

    move v3, v0

    .line 1569
    .end local v17    # "view":Landroid/opengl/GLSurfaceView;
    :cond_19
    if-eqz v7, :cond_1b

    .line 1573
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    move-object v4, v0

    .line 1574
    .local v4, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_1a

    .line 1576
    :try_start_1d
    const-string v0, "onSurfaceChanged"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    move/from16 v20, v6

    const-wide/16 v5, 0x8

    .end local v6    # "lostEglContext":Z
    .local v20, "lostEglContext":Z
    :try_start_1e
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1577
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 1579
    :try_start_1f
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    goto :goto_c

    .line 1579
    :catchall_5
    move-exception v0

    goto :goto_b

    .end local v20    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :catchall_6
    move-exception v0

    move/from16 v20, v6

    .end local v6    # "lostEglContext":Z
    .restart local v20    # "lostEglContext":Z
    :goto_b
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1574
    .end local v20    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1a
    move/from16 v20, v6

    .line 1582
    .end local v6    # "lostEglContext":Z
    .restart local v20    # "lostEglContext":Z
    :goto_c
    const/4 v0, 0x0

    move v7, v0

    .end local v7    # "sizeChanged":Z
    .local v0, "sizeChanged":Z
    goto :goto_d

    .line 1569
    .end local v0    # "sizeChanged":Z
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .end local v20    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    :cond_1b
    move/from16 v20, v6

    .line 1589
    .end local v6    # "lostEglContext":Z
    .restart local v20    # "lostEglContext":Z
    :goto_d
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    move-object v4, v0

    .line 1590
    .restart local v4    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_1d

    .line 1592
    :try_start_20
    const-string v0, "onDrawFrame"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1593
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1594
    if-eqz v14, :cond_1c

    .line 1595
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 1596
    const/4 v14, 0x0

    .line 1599
    :cond_1c
    const-wide/16 v5, 0x8

    :try_start_21
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1600
    goto :goto_e

    .line 1599
    :catchall_7
    move-exception v0

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1600
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1603
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1d
    :goto_e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    move v4, v0

    .line 1604
    .local v4, "swapError":I
    sparse-switch v4, :sswitch_data_0

    .line 1618
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    goto :goto_f

    .line 1611
    :sswitch_0
    const/4 v0, 0x1

    .line 1612
    .end local v20    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    move v6, v0

    goto :goto_11

    .line 1606
    .end local v0    # "lostEglContext":Z
    .restart local v20    # "lostEglContext":Z
    :sswitch_1
    goto :goto_10

    .line 1618
    :goto_f
    const-string v5, "eglSwapBuffers"

    invoke-static {v0, v5, v4}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1620
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v5

    monitor-enter v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 1621
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1622
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1623
    monitor-exit v5

    .line 1627
    :goto_10
    move/from16 v6, v20

    .end local v20    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :goto_11
    if-eqz v8, :cond_1e

    .line 1628
    const/4 v0, 0x1

    .line 1629
    .end local v9    # "doRenderNotification":Z
    .local v0, "doRenderNotification":Z
    const/4 v5, 0x0

    move v9, v0

    move v8, v5

    .line 1631
    .end local v0    # "doRenderNotification":Z
    .end local v4    # "swapError":I
    .restart local v9    # "doRenderNotification":Z
    :cond_1e
    move v4, v15

    move/from16 v5, v16

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1623
    .end local v6    # "lostEglContext":Z
    .restart local v4    # "swapError":I
    .restart local v20    # "lostEglContext":Z
    :catchall_8
    move-exception v0

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 1519
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v15    # "createEglSurface":Z
    .end local v16    # "createGlInterface":Z
    .end local v20    # "lostEglContext":Z
    .local v4, "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_9
    move-exception v0

    move/from16 v20, v6

    .end local v6    # "lostEglContext":Z
    .restart local v20    # "lostEglContext":Z
    goto :goto_13

    .line 1495
    .end local v3    # "createEglContext":Z
    .end local v20    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v18    # "pausing":Z
    .restart local v19    # "createEglContext":Z
    :cond_1f
    if-eqz v14, :cond_20

    .line 1496
    :try_start_24
    const-string v0, "GLThread"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 1499
    const/4 v0, 0x0

    move-object v14, v0

    move/from16 v3, v19

    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .local v0, "finishDrawingRunnable":Ljava/lang/Runnable;
    goto :goto_12

    .line 1495
    .end local v0    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    :cond_20
    move/from16 v3, v19

    .line 1517
    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :cond_21
    :goto_12
    :try_start_25
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1518
    .end local v18    # "pausing":Z
    move-object/from16 v2, v17

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1519
    .end local v3    # "createEglContext":Z
    .restart local v19    # "createEglContext":Z
    :catchall_a
    move-exception v0

    move/from16 v3, v19

    goto :goto_13

    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :catchall_b
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "createEglContext":Z
    .restart local v19    # "createEglContext":Z
    goto :goto_13

    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v19    # "createEglContext":Z
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    :catchall_c
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_13
    monitor-exit v15
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_26
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_d
    move-exception v0

    goto :goto_13

    .line 1637
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_e
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1638
    :try_start_27
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1639
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1640
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 1641
    throw v0

    .line 1640
    :catchall_f
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o readyToDraw()Z
    .locals 2

    .line 1649
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist setTag()V
    .locals 3

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mTag:Ljava/lang/String;

    .line 1277
    return-void
.end method

.method private greylist-max-o stopEglContextLocked()V
    .locals 1

    .line 1311
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1314
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1316
    :cond_0
    return-void
.end method

.method private greylist-max-o stopEglSurfaceLocked()V
    .locals 1

    .line 1300
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1302
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1304
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o ableToDraw()Z
    .locals 1

    .line 1645
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getRenderMode()I
    .locals 2

    .line 1665
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1666
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onPause()V
    .locals 3

    .line 1734
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1738
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1739
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1740
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1745
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1748
    :goto_1
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v1

    .line 1747
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1750
    :cond_0
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onResume()V
    .locals 3

    .line 1754
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1758
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1759
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1760
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1761
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1762
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1767
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    :goto_1
    goto :goto_0

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1772
    :cond_0
    monitor-exit v0

    .line 1773
    return-void

    .line 1772
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1776
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1777
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1778
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1779
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1780
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1781
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1788
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1789
    monitor-exit v0

    return-void

    .line 1792
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1795
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_1

    .line 1796
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1801
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    :goto_1
    goto :goto_0

    .line 1802
    :catch_0
    move-exception v1

    .line 1803
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1806
    :cond_1
    monitor-exit v0

    .line 1807
    return-void

    .line 1806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1835
    if-eqz p1, :cond_0

    .line 1838
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1839
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1841
    monitor-exit v0

    .line 1842
    return-void

    .line 1841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1836
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestExitAndWait()V
    .locals 3

    .line 1812
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1813
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1814
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1815
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1817
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1820
    :goto_1
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v1

    .line 1819
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1822
    :cond_0
    monitor-exit v0

    .line 1823
    return-void

    .line 1822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o requestReleaseEglContextLocked()V
    .locals 1

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1827
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1828
    return-void
.end method

.method public greylist-max-o requestRender()V
    .locals 2

    .line 1671
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1672
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1673
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1674
    monitor-exit v0

    .line 1675
    return-void

    .line 1674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1678
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1683
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1684
    monitor-exit v0

    return-void

    .line 1687
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1688
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1689
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1690
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1693
    monitor-exit v0

    .line 1694
    return-void

    .line 1693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1287
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    :goto_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1292
    goto :goto_1

    .line 1291
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1292
    throw v0

    .line 1288
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1293
    :goto_1
    return-void
.end method

.method public greylist-max-o setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .line 1655
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1658
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1659
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1660
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1661
    monitor-exit v0

    .line 1662
    return-void

    .line 1661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o surfaceCreated()V
    .locals 3

    .line 1697
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1701
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1702
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1703
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1704
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1708
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    :goto_1
    goto :goto_0

    .line 1709
    :catch_0
    move-exception v1

    .line 1710
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1713
    :cond_0
    monitor-exit v0

    .line 1714
    return-void

    .line 1713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o surfaceDestroyed()V
    .locals 3

    .line 1717
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1721
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1722
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1723
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1725
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    :goto_1
    goto :goto_0

    .line 1726
    :catch_0
    move-exception v1

    .line 1727
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1730
    :cond_0
    monitor-exit v0

    .line 1731
    return-void

    .line 1730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
