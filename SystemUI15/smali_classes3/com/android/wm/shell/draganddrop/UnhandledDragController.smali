.class public final Lcom/android/wm/shell/draganddrop/UnhandledDragController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;


# static fields
.field public static final DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mLaunchBounds:Landroid/graphics/Rect;

.field public final mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0a7efa    # 0.541f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/MultiInstanceHelper;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect2:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method


# virtual methods
.method public final onUnhandledDrag(Landroid/app/PendingIntent;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;Landroid/view/DragEvent;)Z
    .locals 10

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    const-string v1, "UnhandledDragController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "onUnhandledDrag is not supported."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "supportsMultiInstanceSplit() returns false"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/high16 v4, 0x18000000

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    invoke-virtual {p4}, Landroid/view/DragEvent;->getDisplayId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v7

    if-nez v7, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DisplayLayout is null for displayId="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_BOUNDS_POLICY:Z

    if-eqz v8, :cond_6

    if-le v1, v6, :cond_5

    int-to-float v1, v1

    sget-object v8, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    int-to-float v6, v6

    iget v8, v8, Landroid/graphics/PointF;->y:F

    :goto_2
    mul-float/2addr v6, v8

    float-to-int v6, v6

    goto :goto_3

    :cond_5
    int-to-float v1, v1

    sget-object v8, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    int-to-float v6, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :goto_3
    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v2, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_4
    move-object v1, v3

    goto :goto_6

    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v3

    :goto_5
    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    const-wide/32 v8, 0x20000

    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :goto_6
    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v6, v6

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/view/SemWindowManager;->getInitialDensity()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_c
    move-object v9, v3

    :goto_7
    invoke-static {v6, v8, v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    :cond_d
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-static {v6, v8, v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :goto_8
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10503b0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v1, 0x1

    :goto_9
    mul-int/2addr v1, v4

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v8, v9

    invoke-virtual {p4}, Landroid/view/DragEvent;->getY()F

    move-result p4

    float-to-int p4, p4

    sub-int/2addr p4, v1

    invoke-virtual {v6, v8, p4}, Landroid/graphics/Rect;->offset(II)V

    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v8, :cond_f

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v8, v2

    sub-int v4, v8, v1

    goto :goto_a

    :cond_f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_10

    add-int v4, v6, v1

    :cond_10
    :goto_a
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTempRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr v8, p4

    sub-int p4, v8, v1

    goto :goto_b

    :cond_11
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_12

    add-int p4, v6, v1

    :cond_12
    :goto_b
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p4

    const-string v0, "android:activity.launchBounds"

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android:activity.unhandledDropLaunch"

    invoke-virtual {p4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0, p1, v3, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, v5, v0, v3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->accept(Ljava/lang/Object;)V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return v5

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1
.end method
