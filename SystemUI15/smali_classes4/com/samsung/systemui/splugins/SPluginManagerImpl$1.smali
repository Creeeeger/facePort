.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

.field final synthetic val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPluginInitializer;->onPluginManagerInit()V

    return-void
.end method
