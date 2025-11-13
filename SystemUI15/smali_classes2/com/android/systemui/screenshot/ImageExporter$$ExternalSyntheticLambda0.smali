.class public final synthetic Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method
