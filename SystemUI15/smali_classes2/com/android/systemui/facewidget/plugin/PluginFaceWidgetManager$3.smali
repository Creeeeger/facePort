.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 7

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    iget-object v0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->hashCode()I

    move-result p0

    iget-object v0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    const-string v1, "PluginFaceWidgetManager"

    if-eq p0, v0, :cond_2

    const-string v3, "onConfigurationChanged: changed ["

    const-string v4, " -> "

    const-string v5, "]"

    invoke-static {p0, v0, v3, v4, v5}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSettingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "onConfigurationChanged: try plugin connect again"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Do not  initPluginModule in safe mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_2
    iget-object p0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_3

    const-string p0, "onConfigurationChanged: "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    :goto_0
    return-void
.end method
