.class Lcom/samsung/android/bio/iris/SemIrisManager$4$3;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$4;->onAuthenticationFailed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/bio/iris/SemIrisManager$4;

    .line 4342
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 4345
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$4$3;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$4;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    .line 4346
    return-void
.end method
