.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]MultiWindowManagerWrapper"

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;


# instance fields
.field private final DEX_LAUNCHER_HOME_ACTIVITY_TASK:Ljava/lang/String;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

.field private final mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    const-string v0, "com.sec.android.app.desktoplauncher/com.android.launcher3.Launcher"

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->DEX_LAUNCHER_HOME_ACTIVITY_TASK:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addRegisterDexSnappingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    return-object v0
.end method

.method private isDeXHome(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.android.app.desktoplauncher/com.android.launcher3.Launcher"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private removeUnregisterDexSnappingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->addRegisterDexSnappingCallback()V

    return-void
.end method

.method public clearCallback()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->removeUnregisterDexSnappingCallback()V

    return-void
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleTasksbyDisplayId(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->isDeXHome(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasMinimizedToggleTasks()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hasMinimizedToggleTasks()Z

    move-result p0

    return p0
.end method

.method public minimizeAllTasksForLauncher()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    move-result p0

    return p0
.end method

.method public minimizeTaskById(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskById(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .locals 0

    return-void
.end method
