.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnded()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onCancelEditMode()V

    :cond_0
    return-void
.end method

.method public final onAnimationStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onStartingEditModeAnimation(Z)V

    :cond_0
    return-void
.end method

.method public final onTouchDownCanceled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onStartingEditModeTouchDownCanceled()V

    :cond_0
    return-void
.end method

.method public final onTouchDownStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onStartingEditModeTouchDownStarted()V

    :cond_0
    return-void
.end method
