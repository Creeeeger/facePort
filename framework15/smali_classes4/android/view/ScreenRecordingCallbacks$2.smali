.class Landroid/view/ScreenRecordingCallbacks$2;
.super Landroid/window/IScreenRecordingCallback$Stub;
.source "ScreenRecordingCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScreenRecordingCallbacks;->addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ScreenRecordingCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/view/ScreenRecordingCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ScreenRecordingCallbacks$2;->this$0:Landroid/view/ScreenRecordingCallbacks;

    invoke-direct {p0}, Landroid/window/IScreenRecordingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onScreenRecordingStateChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks$2;->this$0:Landroid/view/ScreenRecordingCallbacks;

    invoke-static {v2, v1, v0}, Landroid/view/ScreenRecordingCallbacks;->-$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;IZ)V

    return-void
.end method
