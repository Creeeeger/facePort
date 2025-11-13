.class final Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;
.super Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;
.source "SynchronousResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/modules/utils/SynchronousResultReceiver;


# direct methods
.method private constructor blacklist <init>(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;->this$0:Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-direct {p0}, Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/modules/utils/SynchronousResultReceiver;Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;-><init>(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist send(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    .locals 2

    move-object v0, p1

    iget-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;->this$0:Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-static {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->-$$Nest$mgetFuture(Lcom/android/modules/utils/SynchronousResultReceiver;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
