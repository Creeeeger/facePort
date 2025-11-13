.class Lcom/android/systemui/bixby2/controller/ScreenController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$2;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$2;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$msendBackKey(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
