.class public final synthetic Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/function/Supplier;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Supplier;

    iget-object p0, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
