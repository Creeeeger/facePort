.class public final synthetic Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    const-string v7, "PluginFaceWidgetManager"

    if-eqz v0, :cond_0

    const-string v0, "Do not  initPluginModule in safe mode"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    const/4 v4, 0x0

    const-string v1, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$5;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    invoke-interface {v0, v1, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method
