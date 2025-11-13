.class Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;
.super Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;->setResourceContention(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

.field final synthetic blacklist val$signal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist eventReceived()V
    .locals 1

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
