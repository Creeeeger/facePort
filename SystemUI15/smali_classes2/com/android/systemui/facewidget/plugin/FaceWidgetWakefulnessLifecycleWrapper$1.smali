.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onFinishedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onFinishedWakingUp()V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onStartedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onStartedWakingUp()V

    :cond_0
    return-void
.end method
