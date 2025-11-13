.class public final Lcom/samsung/android/systemui/multistar/MultiStarManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    sget-object p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const-string p2, "MultiStarManager"

    const-string v0, "onPluginConnected"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V

    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const-string p0, "MultiStarManager"

    const-string p1, "onPluginDisconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-void
.end method
