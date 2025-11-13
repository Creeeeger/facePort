.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionController;


# instance fields
.field public final mController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mHashMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mHashMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;)V

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper$CallbackWrapper;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;->mController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->removeCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    :cond_0
    return-void
.end method
