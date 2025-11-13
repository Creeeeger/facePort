.class public final Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public final mClassLoaderFactory:Ljava/util/function/Supplier;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

.field public final mPluginClass:Ljava/lang/Class;

.field public final mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;Ljava/lang/Class;Ljava/util/function/Supplier;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;",
            "Ljava/lang/Class<",
            "Lcom/android/systemui/plugins/Plugin;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/ClassLoader;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mComponentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    iput-object p6, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mPluginClass:Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    iput p8, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final checkVersion(Lcom/android/systemui/plugins/Plugin;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPlugin()Lcom/android/systemui/plugins/Plugin;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mPluginClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginInstance$VersionCheckerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/shared/plugins/VersionInfo;

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/VersionInfo;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    new-instance v1, Lcom/android/systemui/shared/plugins/VersionInfo;

    invoke-direct {v1}, Lcom/android/systemui/shared/plugins/VersionInfo;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v3, :cond_2

    iput-object v0, v1, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    iget-object v0, v1, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    new-instance p1, Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v0, v1, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/systemui/shared/plugins/VersionInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/shared/plugins/VersionInfo$1;-><init>(Lcom/android/systemui/shared/plugins/VersionInfo;Landroid/util/ArrayMap;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Lcom/android/systemui/shared/plugins/VersionInfo$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/plugins/VersionInfo$2;-><init>(Lcom/android/systemui/shared/plugins/VersionInfo;)V

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    iget p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo$Version;->mVersion:I

    if-ne p1, p0, :cond_4

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_4
    new-instance p0, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;

    const-string p1, "Invalid legacy version"

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p0
.end method

.method public final createPlugin()Lcom/android/systemui/plugins/Plugin;
    .locals 5

    const-string v0, "Failed to load plugin"

    const-string v1, "PluginInstance"

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/Plugin;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createPluginContext()Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iget v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mDisplayId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :cond_0
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    const-string v0, "PluginInstance"

    const-string v1, "Failed to create plugin context"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
