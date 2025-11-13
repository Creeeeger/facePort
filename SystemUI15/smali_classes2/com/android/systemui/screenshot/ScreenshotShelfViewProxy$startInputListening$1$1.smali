.class public final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$startInputListening$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$startInputListening$1$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$startInputListening$1$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->access$getTouchRegion(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->callbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController$3;->onTouchOutside()V

    :cond_0
    return-void
.end method
