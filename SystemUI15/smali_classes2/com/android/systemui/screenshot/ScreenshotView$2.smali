.class public final Lcom/android/systemui/screenshot/ScreenshotView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    sget p1, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->stopInputListening()V

    new-instance p1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    const-string v0, "Screenshot"

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDefaultDisplay:I

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->stopInputListening()V

    return-void
.end method
