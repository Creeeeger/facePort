.class Lcom/android/systemui/doze/PluginAODManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPhoneStateChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_1
    :goto_0
    return-void
.end method
