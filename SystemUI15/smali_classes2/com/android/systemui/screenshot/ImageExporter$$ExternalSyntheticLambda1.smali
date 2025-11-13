.class public final synthetic Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageExporter$Task;->execute()Lcom/android/systemui/screenshot/ImageExporter$Result;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
