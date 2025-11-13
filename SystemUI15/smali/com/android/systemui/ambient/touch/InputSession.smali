.class public final Lcom/android/systemui/ambient/touch/InputSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public mPilfering:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/view/GestureDetector;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/Choreographer;Landroid/os/Looper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/InputSession;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/InputSession;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p6}, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/InputSession;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Z)V

    invoke-virtual {p1, p5, p4, p2}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/InputSession;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void
.end method
