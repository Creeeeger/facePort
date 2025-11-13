.class Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .line 196
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 199
    new-instance v0, Landroid/hardware/motion/MREvent;

    invoke-direct {v0}, Landroid/hardware/motion/MREvent;-><init>()V

    .line 200
    .local v0, "event":Landroid/hardware/motion/MREvent;
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getTilt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDz()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDz(I)V

    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDxImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDxImage(I)V

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDyImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDyImage(I)V

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getPanningDzImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setPanningDzImage(I)V

    .line 208
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->-$$Nest$fgetmoldListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/motion/MRListener;->onMotionListener(Landroid/hardware/motion/MREvent;)V

    .line 209
    return-void
.end method
