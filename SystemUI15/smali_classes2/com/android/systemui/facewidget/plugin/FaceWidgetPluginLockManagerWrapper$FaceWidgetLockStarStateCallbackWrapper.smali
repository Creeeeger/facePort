.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    return-void
.end method


# virtual methods
.method public final onClockChanged(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;->onClockChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onLockStarEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;->onLockStarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onMusicChanged(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;->onMusicChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;->onUiInfoRequested()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final onViewModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method
