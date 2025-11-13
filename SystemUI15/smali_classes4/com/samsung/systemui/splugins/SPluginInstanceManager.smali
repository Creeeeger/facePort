.class public Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PLUGIN_DISCONNECTED_REASON_CHANGE:I = 0x2

.field public static final PLUGIN_DISCONNECTED_REASON_DELETED:I = 0x0

.field public static final PLUGIN_DISCONNECTED_REASON_UPDATE:I = 0x1

.field public static final PLUGIN_LOAD_FAILED_REASON_VERSION:I = 0x0

.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "com.samsung.systemui.permission.SPLUGIN"

.field private static final TAG:Ljava/lang/String; = "PluginInstanceManager"


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

.field private final mAllowMultiple:Z

.field private final mAllowMultipleUsers:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPkgChanged:Z

.field private final mListener:Lcom/samsung/systemui/splugins/SPluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

.field final mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

.field private final mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

.field private final mWhitelistedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerProxy(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowMultiple(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowMultipleUsers(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManager(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyInteractor(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Z[Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            "Z[",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mWhitelistedPlugins:Landroid/util/ArraySet;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-direct {v1, p0, p7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    iput-object p9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    iput-boolean p6, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    iput-object p8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iput-boolean p10, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    new-instance p1, Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    invoke-direct {p1}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    iput-object p12, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            "Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getAllowedPlugins()[Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Z[Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V

    return-void
.end method

.method private disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "PluginInstanceManager"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iget-object v2, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    iget-object v1, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v2, v1, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v2, :cond_0

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Disabling plugin "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object p0

    invoke-interface {p0, v1, p2}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    iget-object v3, v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    iget-object v2, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->unregister()V

    return-void
.end method

.method public disableAll(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getPlugin()Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$mhandleQueryPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)V

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Must be called from UI thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (action="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
