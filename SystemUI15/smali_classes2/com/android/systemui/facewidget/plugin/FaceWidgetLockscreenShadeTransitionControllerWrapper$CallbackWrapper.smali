.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field public final mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    return-void
.end method


# virtual methods
.method public final onExpansionFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->onExpansionFinished()V

    return-void
.end method

.method public final onExpansionReset()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->onExpansionReset()V

    return-void
.end method

.method public final onExpansionStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->onExpansionStarted()V

    return-void
.end method

.method public final onPulseExpansionFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->onPulseExpansionFinished()V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->setTransitionToFullShadeAmount(F)V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(FZJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;->setTransitionToFullShadeAmount(FZJ)V

    return-void
.end method
