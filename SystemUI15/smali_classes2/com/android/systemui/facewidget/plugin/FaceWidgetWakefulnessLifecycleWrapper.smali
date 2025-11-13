.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mObserver:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

.field public mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method
