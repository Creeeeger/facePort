.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$5;
.super Landroid/app/UserSwitchObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$5;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 9

    const-string v0, "onUserSwitchComplete() "

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$5;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, v4, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {p0, v4}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Do not  initPluginModule in safe mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    const-class v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    :goto_0
    return-void
.end method
