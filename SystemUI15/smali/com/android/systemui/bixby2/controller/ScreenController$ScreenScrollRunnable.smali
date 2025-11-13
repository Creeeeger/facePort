.class Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mOffset:F

.field private mState:I

.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mOffset:F

    iput p4, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mDuration:I

    iput p5, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmScreenScrollHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mOffset:F

    iget v3, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mDuration:I

    iget v4, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->mState:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$mscrollTo(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmScreenScrollRunnable(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    :goto_0
    return-void
.end method
