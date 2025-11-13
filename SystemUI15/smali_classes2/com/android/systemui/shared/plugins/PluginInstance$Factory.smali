.class public final Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBaseClassLoader:Ljava/lang/ClassLoader;

.field public final mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

.field public final mIsDebug:Z

.field public final mPrivilegedPlugins:Ljava/util/List;

.field public final mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mPrivilegedPlugins:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    iput-boolean p5, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mIsDebug:Z

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginListener;I)Lcom/android/systemui/shared/plugins/PluginInstance;
    .locals 10

    move-object v0, p0

    new-instance v9, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    new-instance v7, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;

    move-object v3, p2

    invoke-direct {v7, p0, p2}, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginInstance$Factory;Landroid/content/pm/ApplicationInfo;)V

    iget-object v2, v0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    iget-object v5, v0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    move-object v0, v9

    move-object v1, p1

    move-object v4, p3

    move-object v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;Ljava/lang/Class;Ljava/util/function/Supplier;I)V

    new-instance v6, Lcom/android/systemui/shared/plugins/PluginInstance;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p5

    move-object v3, p3

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginInstance;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginListener;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;Lcom/android/systemui/plugins/Plugin;)V

    return-object v6
.end method
