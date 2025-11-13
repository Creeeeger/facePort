.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final greylist-max-o ADD_APP_EXITING:I = -0x4

.field public static final greylist-max-o ADD_BAD_APP_TOKEN:I = -0x1

.field public static final greylist-max-o ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final greylist-max-o ADD_DUPLICATE_ADD:I = -0x5

.field public static final blacklist ADD_FLAG_ALWAYS_CONSUME_SYSTEM_BARS:I = 0x4

.field public static final greylist-max-o ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final blacklist ADD_FLAG_BOUNDS_COMPAT_MODE:I = 0x100000

.field public static final blacklist ADD_FLAG_BOUNDS_COMPAT_TRANSLATOR:I = 0x800000

.field public static final greylist-max-o ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final blacklist ADD_FLAG_REMOVE_CUTOUT:I = 0x200000

.field public static final blacklist ADD_FLAG_REMOVE_CUTOUT_FOR_DISPATCH:I = 0x400000

.field public static final blacklist ADD_FLAG_USE_BLAST:I = 0x8

.field public static final greylist-max-o ADD_INVALID_DISPLAY:I = -0x9

.field public static final greylist-max-o ADD_INVALID_TYPE:I = -0xa

.field public static final blacklist ADD_INVALID_USER:I = -0xb

.field public static final greylist-max-o ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final greylist-max-o ADD_NOT_APP_TOKEN:I = -0x3

.field public static final greylist-max-o ADD_OKAY:I = 0x0

.field public static final greylist-max-o ADD_PERMISSION_DENIED:I = -0x8

.field private static final blacklist ADD_REPEAT_TIMEOUT:I = 0x32

.field public static final blacklist ADD_RES_DEX_COMPAT_MODE:I = 0x20000

.field public static final greylist-max-o ADD_STARTING_NOT_NEEDED:I = -0x6

.field private static final blacklist LOG_WINDOW_COUNT:I = 0x32

.field private static final blacklist MAX_ADD_REPEAT_COUNT:I = 0xfa0

.field private static final blacklist MAX_WINDOW_COUNT:I = 0x12c

.field public static final greylist-max-o RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final blacklist RELAYOUT_RES_BOUNDS_COMPAT_MODE:I = 0x100000

.field public static final blacklist RELAYOUT_RES_BOUNDS_COMPAT_TRANSLATOR:I = 0x800000

.field public static final blacklist RELAYOUT_RES_CONSUME_ALWAYS_SYSTEM_BARS:I = 0x8

.field public static final blacklist RELAYOUT_RES_DEX_COMPAT_MODE:I = 0x20000

.field public static final greylist-max-o RELAYOUT_RES_FIRST_TIME:I = 0x1

.field public static final blacklist RELAYOUT_RES_REMOVE_CUTOUT:I = 0x200000

.field public static final blacklist RELAYOUT_RES_REMOVE_CUTOUT_FOR_DISPATCH:I = 0x400000

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_CHANGED:I = 0x2

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_RESIZED:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WindowManager"

.field private static greylist sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static blacklist sUseBLASTAdapter:Z

.field private static greylist sWindowManagerService:Landroid/view/IWindowManager;

.field private static greylist sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private blacklist mAddRepeatCount:I

.field private final greylist-max-o mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastAddViewTime:J

.field private final greylist mLock:Ljava/lang/Object;

.field private blacklist mMultiWindowHandlerCount:I

.field private final greylist mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final greylist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWindowlessRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoots(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/WindowManagerGlobal;->mLastAddViewTime:J

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManagerGlobal;->mAddRepeatCount:I

    .line 241
    return-void
.end method

.method private greylist-max-o doTrimForeground()V
    .locals 5

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "hasVisibleWindows":Z
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 794
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 795
    .local v3, "root":Landroid/view/ViewRootImpl;
    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_0

    .line 797
    const/4 v0, 0x1

    goto :goto_1

    .line 799
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 793
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 802
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    if-nez v0, :cond_2

    .line 804
    const/16 v1, 0x50

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 807
    :cond_2
    return-void

    .line 802
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private greylist-max-o findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .line 731
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 732
    .local v0, "index":I
    if-eqz p2, :cond_1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    .line 250
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Landroid/view/WindowManagerGlobal;

    invoke-direct {v1}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 254
    :cond_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 3

    .line 260
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 261
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 262
    const-string/jumbo v1, "window"

    .line 263
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-eqz v1, :cond_0

    .line 266
    nop

    .line 267
    :try_start_1
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    .line 266
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 268
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->useBLAST()Z

    move-result v1

    sput-boolean v1, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    return-object v0
.end method

.method public static greylist getWindowSession()Landroid/view/IWindowSession;
    .locals 3

    .line 280
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 286
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 287
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 288
    .local v1, "windowManager":Landroid/view/IWindowManager;
    new-instance v2, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v2}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    .line 299
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v1    # "windowManager":Landroid/view/IWindowManager;
    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static greylist initialize()V
    .locals 0

    .line 245
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 246
    return-void
.end method

.method static synthetic blacklist lambda$dispatchVirtualActionOutside$1(Landroid/view/View;)V
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 924
    .local v8, "curTime":J
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 925
    .local v0, "actionOutside":Landroid/view/MotionEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 926
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 927
    return-void
.end method

.method static synthetic blacklist lambda$setStoppedState$0(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "root"    # Landroid/view/ViewRootImpl;
    .param p1, "stopped"    # Z

    .line 907
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    return-void
.end method

.method public static greylist-max-p peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    .line 312
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 313
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o removeViewLocked(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .line 679
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 680
    .local v0, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ImeFocusController;->onWindowDismissed()V

    .line 685
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v2

    .line 686
    .local v2, "deferred":Z
    if-eqz v1, :cond_1

    .line 687
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 688
    if-eqz v2, :cond_1

    .line 689
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_1
    return-void
.end method

.method public static greylist-max-o shouldDestroyEglContext(I)Z
    .locals 2
    .param p0, "trimLevel"    # I

    .line 741
    const/4 v0, 0x1

    const/16 v1, 0x50

    if-lt p0, v1, :cond_0

    .line 742
    return v0

    .line 744
    :cond_0
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_1

    .line 745
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_1

    .line 746
    return v0

    .line 748
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o trimForeground()V
    .locals 1

    .line 783
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 786
    .local v0, "wm":Landroid/view/WindowManagerGlobal;
    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 788
    .end local v0    # "wm":Landroid/view/WindowManagerGlobal;
    :cond_0
    return-void
.end method

.method public static blacklist useBLAST()Z
    .locals 1

    .line 321
    sget-boolean v0, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z

    return v0
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;
    .param p5, "userId"    # I

    .line 415
    if-eqz p1, :cond_19

    .line 418
    if-eqz p3, :cond_18

    .line 421
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_17

    .line 426
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 429
    .local v0, "curTime":J
    iget-wide v4, p0, Landroid/view/WindowManagerGlobal;->mLastAddViewTime:J

    const-wide/16 v6, 0x32

    add-long/2addr v4, v6

    .line 430
    .local v4, "timeout":J
    iput-wide v0, p0, Landroid/view/WindowManagerGlobal;->mLastAddViewTime:J

    .line 431
    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 432
    iget v6, p0, Landroid/view/WindowManagerGlobal;->mAddRepeatCount:I

    const/16 v7, 0xfa0

    if-gt v6, v7, :cond_0

    .line 435
    add-int/2addr v6, v3

    iput v6, p0, Landroid/view/WindowManagerGlobal;->mAddRepeatCount:I

    goto :goto_0

    .line 433
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Add view repeat count is over!!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_1
    iput v2, p0, Landroid/view/WindowManagerGlobal;->mAddRepeatCount:I

    .line 440
    .end local v0    # "curTime":J
    .end local v4    # "timeout":J
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    .line 441
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ltz v1, :cond_4

    const/16 v3, 0x32

    if-ge v2, v3, :cond_4

    .line 443
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addedView("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 445
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addedParams("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 449
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "window count is over max!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 454
    :cond_5
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 455
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_6

    .line 456
    invoke-virtual {p4, v0}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 460
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 461
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_7

    .line 462
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 464
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 469
    .end local v1    # "context":Landroid/content/Context;
    :cond_7
    :goto_2
    const/4 v1, 0x0

    .line 471
    .local v1, "panelParentView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 473
    :try_start_2
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v5, :cond_8

    .line 474
    new-instance v5, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v5, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v5, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 483
    invoke-static {v5}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 486
    :cond_8
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 487
    .local v2, "index":I
    if-ltz v2, :cond_a

    .line 488
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 490
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_3

    .line 492
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been added to the window manager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    throw v3

    .line 500
    .restart local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    :cond_a
    :goto_3
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_c

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_c

    .line 502
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 503
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_c

    .line 504
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v7}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v7, v8, :cond_b

    .line 505
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v1, v7

    .line 503
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 510
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_c
    const/4 v5, 0x0

    .line 513
    .local v5, "windowlessSession":Landroid/view/IWindowSession;
    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v6, :cond_e

    if-nez v1, :cond_e

    .line 514
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 515
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 516
    .local v7, "maybeParent":Landroid/view/ViewRootImpl;
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, v9, :cond_d

    .line 517
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v8

    move-object v5, v8

    .line 518
    goto :goto_6

    .line 514
    .end local v7    # "maybeParent":Landroid/view/ViewRootImpl;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 523
    .end local v6    # "i":I
    :cond_e
    :goto_6
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_f

    .line 525
    iget v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    .line 529
    :cond_f
    if-nez v5, :cond_10

    .line 530
    new-instance v6, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p3}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .local v6, "root":Landroid/view/ViewRootImpl;
    goto :goto_7

    .line 532
    .end local v6    # "root":Landroid/view/ViewRootImpl;
    :cond_10
    new-instance v6, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p3, v5}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;)V

    .line 538
    .restart local v6    # "root":Landroid/view/ViewRootImpl;
    :goto_7
    invoke-static {}, Landroid/app/ActivityThread;->isFixedAppContextDisplay()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 539
    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-eqz v7, :cond_13

    .line 540
    iget-object v7, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 541
    .local v7, "appCtx":Landroid/content/Context;
    if-nez v7, :cond_11

    .line 542
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v8

    move-object v7, v8

    .line 544
    :cond_11
    iget-object v8, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_8

    .line 545
    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad display id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 546
    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    throw v3

    .line 550
    .end local v7    # "appCtx":Landroid/content/Context;
    .restart local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    :cond_13
    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 561
    if-eqz p4, :cond_15

    .line 562
    if-eqz v1, :cond_14

    .line 563
    move-object v7, v1

    goto :goto_9

    :cond_14
    :try_start_3
    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    :goto_9
    iput-object v7, v6, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    .line 567
    :cond_15
    invoke-virtual {v6, p1, v0, v1, p5}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 574
    nop

    .line 575
    .end local v2    # "index":I
    .end local v5    # "windowlessSession":Landroid/view/IWindowSession;
    :try_start_4
    monitor-exit v4

    .line 576
    return-void

    .line 568
    .restart local v2    # "index":I
    .restart local v5    # "windowlessSession":Landroid/view/IWindowSession;
    :catch_0
    move-exception v7

    .line 570
    .local v7, "e":Ljava/lang/RuntimeException;
    if-ltz v2, :cond_16

    .line 571
    invoke-direct {p0, v2, v3}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 573
    :cond_16
    nop

    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    throw v7

    .line 575
    .end local v2    # "index":I
    .end local v5    # "windowlessSession":Landroid/view/IWindowSession;
    .end local v6    # "root":Landroid/view/ViewRootImpl;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 422
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "panelParentView":Landroid/view/View;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 973
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    monitor-exit v0

    .line 976
    return-void

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .line 948
    if-nez p1, :cond_0

    .line 949
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 953
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    .line 954
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 955
    monitor-exit v0

    return-void

    .line 952
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 958
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public greylist-max-o closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "who"    # Ljava/lang/String;
    .param p4, "what"    # Ljava/lang/String;

    .line 652
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 654
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 655
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 656
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_3

    :cond_1
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 661
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 662
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 664
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p3, :cond_2

    .line 665
    new-instance v4, Landroid/view/WindowLeaked;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has leaked window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 667
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that was originally added here"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 668
    .local v4, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 669
    const-string v5, "WindowManager"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v4    # "leak":Landroid/view/WindowLeaked;
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 654
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchVirtualActionOutside()V
    .locals 6

    .line 914
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 916
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 917
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 918
    .local v3, "param":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 920
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 921
    .local v4, "rootView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 922
    new-instance v5, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 916
    .end local v3    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "rootView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 931
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchWindowFocusChanged(ZILandroid/os/IBinder;)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z
    .param p2, "inWindowingMode"    # I
    .param p3, "inToken"    # Landroid/os/IBinder;

    .line 998
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget v1, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1000
    monitor-exit v0

    return-void

    .line 1003
    :cond_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1004
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 1005
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1006
    .local v4, "param":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_4

    .line 1007
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    .line 1008
    .local v5, "root":Landroid/view/ViewRootImpl;
    iget-object v6, v5, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 1009
    goto :goto_1

    .line 1012
    :cond_1
    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1013
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1014
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    if-eq v7, p2, :cond_2

    .line 1015
    goto :goto_1

    .line 1018
    :cond_2
    if-eqz p3, :cond_3

    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq p3, v7, :cond_3

    .line 1019
    goto :goto_1

    .line 1022
    :cond_3
    instance-of v7, v6, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v7, :cond_4

    .line 1024
    move-object v7, v6

    check-cast v7, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getAnchor()Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v7

    .line 1025
    .local v7, "handler":Lcom/samsung/android/multiwindow/MultiSplitHandler;
    if-eqz v7, :cond_4

    .line 1026
    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChangedForMultiSplitHandler(Z)V

    .line 1027
    goto :goto_2

    .line 1004
    .end local v4    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "root":Landroid/view/ViewRootImpl;
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "handler":Lcom/samsung/android/multiwindow/MultiSplitHandler;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1032
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_5
    :goto_2
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o doRemoveView(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .line 696
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 698
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 699
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 701
    iget v2, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    if-lez v2, :cond_1

    .line 702
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 703
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 704
    iget v3, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    .line 706
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    goto :goto_0

    .line 708
    :cond_1
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 710
    :goto_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 711
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 713
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    move v1, v2

    .line 714
    .local v1, "allViewsRemoved":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 725
    :cond_3
    if-eqz v1, :cond_4

    .line 726
    invoke-static {}, Landroid/view/InsetsAnimationThread;->release()V

    .line 728
    :cond_4
    return-void

    .line 714
    .end local v1    # "allViewsRemoved":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 810
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 811
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 813
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v5, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 814
    :try_start_1
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 816
    .local v0, "count":I
    const-string v6, "Profile data in ms:"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v6, v0, :cond_3

    .line 819
    iget-object v10, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 820
    .local v10, "root":Landroid/view/ViewRootImpl;
    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v11

    .line 821
    .local v11, "name":Ljava/lang/String;
    const-string v12, "\n\t%s (visibility=%d)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, v8

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v12, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 825
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v7

    iget-object v7, v7, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v7, :cond_0

    .line 826
    move-object/from16 v12, p2

    goto :goto_1

    .line 831
    :cond_0
    nop

    .line 832
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v7

    iget-object v7, v7, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    .local v7, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v7, :cond_1

    .line 834
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v7, v4, v2, v12}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :cond_1
    move-object/from16 v12, p2

    goto :goto_1

    .line 825
    .end local v7    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_2
    move-object/from16 v12, p2

    .line 818
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    .end local v11    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p2

    .line 838
    .end local v6    # "i":I
    const-string v6, "\nView hierarchy:\n"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v6, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {v6}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    .line 842
    .local v6, "totals":Landroid/view/ViewRootImpl$GfxInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/4 v11, 0x3

    const/high16 v13, 0x44800000    # 1024.0f

    if-ge v10, v0, :cond_4

    .line 843
    iget-object v14, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 844
    .local v14, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;

    move-result-object v15

    .line 845
    .local v15, "info":Landroid/view/ViewRootImpl$GfxInfo;
    invoke-virtual {v6, v15}, Landroid/view/ViewRootImpl$GfxInfo;->add(Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 847
    invoke-static {v14}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v16

    .line 848
    .local v16, "name":Ljava/lang/String;
    const-string v7, "  %s\n  %d views, %.2f kB of render nodes"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v16, v11, v8

    iget v8, v15, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 849
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v9

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    iget-wide v9, v15, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v9, v9

    div-float/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v11, v10

    .line 848
    invoke-virtual {v4, v7, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 850
    const-string v7, "\n\n"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 842
    nop

    .end local v14    # "root":Landroid/view/ViewRootImpl;
    .end local v15    # "info":Landroid/view/ViewRootImpl$GfxInfo;
    .end local v16    # "name":Ljava/lang/String;
    add-int/lit8 v10, v17, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .end local v17    # "i":I
    .restart local v10    # "i":I
    goto :goto_2

    :cond_4
    move/from16 v17, v10

    .line 853
    .end local v10    # "i":I
    const-string v7, "\nTotal %-15s: %d\n"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "ViewRootImpl"

    const/4 v14, 0x0

    aput-object v9, v10, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-virtual {v4, v7, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 854
    const-string v7, "Total %-15s: %d\n"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "attached Views"

    const/4 v14, 0x0

    aput-object v9, v10, v14

    iget v9, v6, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-virtual {v4, v7, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 855
    const-string v7, "Total %-15s: %.2f kB (used) / %.2f kB (capacity)\n\n"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "RenderNode"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-wide v10, v6, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v10, v10

    div-float/2addr v10, v13

    .line 856
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v8, 0x1

    aput-object v10, v9, v8

    iget-wide v10, v6, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    long-to-float v8, v10

    div-float/2addr v8, v13

    .line 857
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 855
    invoke-virtual {v4, v7, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 860
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    .line 861
    .local v7, "thread":Landroid/app/ActivityThread;
    if-eqz v7, :cond_5

    .line 862
    invoke-virtual {v7, v4}, Landroid/app/ActivityThread;->dumpProcessAdjustmentInfo(Ljava/io/PrintWriter;)V

    .line 866
    .end local v0    # "count":I
    .end local v6    # "totals":Landroid/view/ViewRootImpl$GfxInfo;
    .end local v7    # "thread":Landroid/app/ActivityThread;
    :cond_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 868
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 869
    nop

    .line 870
    return-void

    .line 866
    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    :goto_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "args":[Ljava/lang/String;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 868
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 866
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 868
    :catchall_3
    move-exception v0

    move-object/from16 v12, p2

    :goto_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 869
    throw v0
.end method

.method public greylist getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 401
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 402
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 400
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 405
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 406
    .restart local v2    # "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 404
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 408
    .end local v1    # "i":I
    :cond_3
    monitor-exit v0

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 345
    .local v2, "numRoots":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 346
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 347
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_0

    .line 348
    goto :goto_3

    .line 350
    :cond_0
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v5, p1, :cond_3

    .line 351
    const/4 v5, 0x0

    .line 352
    .local v5, "isChild":Z
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_2

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_2

    .line 354
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 355
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 356
    .local v7, "viewj":Landroid/view/View;
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 357
    .local v8, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v9, v10, :cond_1

    iget-object v9, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, p1, :cond_1

    .line 359
    const/4 v5, 0x1

    .line 360
    goto :goto_2

    .line 354
    .end local v7    # "viewj":Landroid/view/View;
    .end local v8    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 364
    .end local v6    # "j":I
    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 365
    goto :goto_3

    .line 368
    .end local v5    # "isChild":Z
    :cond_3
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "numRoots":I
    .end local v3    # "i":I
    :cond_4
    monitor-exit v1

    .line 371
    return-object v0

    .line 370
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public greylist getViewRootNames()[Ljava/lang/String;
    .locals 7

    .line 326
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 328
    .local v1, "numRoots":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 329
    .local v2, "windowlessRoots":I
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 330
    .local v3, "mViewRoots":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 331
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 334
    add-int v5, v4, v1

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 336
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return-object v3

    .line 337
    .end local v1    # "numRoots":I
    .end local v2    # "windowlessRoots":I
    .end local v3    # "mViewRoots":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 385
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 387
    .local v1, "numViews":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 388
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 389
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 390
    monitor-exit v0

    return-object v3

    .line 387
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "numViews":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getWindowViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "displayId"    # I

    .line 965
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r removeView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .line 614
    if-eqz p1, :cond_1

    .line 618
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 620
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 621
    .local v2, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 622
    if-ne v2, p1, :cond_0

    .line 623
    monitor-exit v0

    return-void

    .line 626
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "immediate":Z
    throw v3

    .line 628
    .end local v1    # "index":I
    .end local v2    # "curView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "immediate":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 980
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 982
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 936
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 938
    .local v1, "count":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p1, v2

    .line 939
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 940
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 941
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, p1}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 939
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .locals 2
    .param p1, "behindSystemBars"    # Z

    .line 987
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setStoppedState(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "nonCurrentThreadRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 880
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 881
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 882
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    .line 883
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 885
    .local v4, "root":Landroid/view/ViewRootImpl;
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 886
    invoke-virtual {v4, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    goto :goto_1

    .line 888
    :cond_1
    if-nez v0, :cond_2

    .line 889
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 891
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :goto_1
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, v5, p2}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 881
    .end local v4    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 899
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    if-eqz v0, :cond_5

    .line 905
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 906
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 907
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v4, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p2}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl;Z)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 905
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 910
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 899
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public greylist-max-p trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 755
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    return-void

    .line 760
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 765
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 764
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 767
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 769
    const/16 p1, 0x50

    goto :goto_1

    .line 767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 772
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 774
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_3

    .line 775
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 777
    :cond_3
    return-void
.end method

.method public greylist-max-o updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 579
    if-eqz p1, :cond_3

    .line 582
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 586
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 588
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v3

    .line 592
    .local v3, "index":I
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 595
    .local v4, "root":Landroid/view/ViewRootImpl;
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 596
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    if-lez v6, :cond_0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    .line 598
    iget v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    sub-int/2addr v6, v2

    iput v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    .line 600
    :cond_0
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    .line 601
    iget v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/view/WindowManagerGlobal;->mMultiWindowHandlerCount:I

    .line 607
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 608
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 609
    .end local v3    # "index":I
    .end local v4    # "root":Landroid/view/ViewRootImpl;
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 583
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
