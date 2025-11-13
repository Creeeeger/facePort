.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/samsung/systemui/splugins/SVersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    return-void
.end method
