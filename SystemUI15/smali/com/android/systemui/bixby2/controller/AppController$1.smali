.class Lcom/android/systemui/bixby2/controller/AppController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;

.field final synthetic val$mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;Landroid/app/Instrumentation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$1;->val$mInstrumentation:Landroid/app/Instrumentation;

    const/16 v0, 0xbb

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
