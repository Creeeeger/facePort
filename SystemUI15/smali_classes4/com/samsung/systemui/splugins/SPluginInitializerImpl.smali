.class public Lcom/samsung/systemui/splugins/SPluginInitializerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginInitializer;


# static fields
.field private static final WTFS_SHOULD_CRASH:Z


# instance fields
.field private mWtfsSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030046

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBgLooper()Landroid/os/Looper;
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method

.method public getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
    .locals 0

    new-instance p0, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    return-void
.end method

.method public onPluginManagerInit()V
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    return-void
.end method
