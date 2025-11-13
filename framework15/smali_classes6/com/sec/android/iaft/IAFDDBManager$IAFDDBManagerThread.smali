.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;
.super Ljava/lang/Thread;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerThread"
.end annotation


# instance fields
.field blacklist mPriority:I

.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v1, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;-><init>(Lcom/sec/android/iaft/IAFDDBManager;)V

    invoke-static {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
