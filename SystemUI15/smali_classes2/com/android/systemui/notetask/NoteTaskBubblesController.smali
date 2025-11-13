.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final serviceConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p2, Lcom/android/internal/infra/ServiceConnector$Impl;

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v5, Lcom/android/systemui/notetask/NoteTaskBubblesController$serviceConnector$1;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskBubblesController$serviceConnector$1;

    const v3, 0x40000021    # 2.0000079f

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController;->serviceConnector:Lcom/android/internal/infra/ServiceConnector;

    return-void
.end method
