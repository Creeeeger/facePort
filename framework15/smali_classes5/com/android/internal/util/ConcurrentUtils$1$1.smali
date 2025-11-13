.class Lcom/android/internal/util/ConcurrentUtils$1$1;
.super Ljava/lang/Thread;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ConcurrentUtils$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ConcurrentUtils$1;

.field final synthetic blacklist val$r:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/ConcurrentUtils$1;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/ConcurrentUtils$1;

    iput-object p3, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/ConcurrentUtils$1;

    iget v0, v0, Lcom/android/internal/util/ConcurrentUtils$1;->val$linuxThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
