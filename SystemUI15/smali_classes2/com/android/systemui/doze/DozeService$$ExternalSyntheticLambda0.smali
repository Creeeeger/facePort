.class public final synthetic Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeService;

    sget-boolean p0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DozeService"

    const-string v0, "addPluginListener() PluginFaceWidget is connected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz p0, :cond_0

    iget-object v0, v2, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v4, 0x0

    const-string v1, "com.android.systemui.action.PLUGIN_AOD"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    const/4 v4, 0x0

    const-string v1, "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    :cond_1
    :goto_0
    return-void
.end method
