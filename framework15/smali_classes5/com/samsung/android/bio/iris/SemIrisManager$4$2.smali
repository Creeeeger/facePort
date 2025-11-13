.class Lcom/samsung/android/bio/iris/SemIrisManager$4$2;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$4;->onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

.field final synthetic blacklist val$fidoResultData:[B

.field final synthetic blacklist val$ir:Lcom/samsung/android/camera/iris/Iris;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;Lcom/samsung/android/camera/iris/Iris;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->val$ir:Lcom/samsung/android/camera/iris/Iris;

    iput-object p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->val$fidoResultData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->val$ir:Lcom/samsung/android/camera/iris/Iris;

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->val$fidoResultData:[B

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/camera/iris/Iris;[B)V

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$fputmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;Ljava/util/concurrent/Executor;)V

    return-void
.end method
