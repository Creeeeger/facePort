.class final Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $dispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field final synthetic $receiver:Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$receiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$receiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$2;->$dispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$2;->$receiver:Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$receiver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$2;->$dispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$2;->$receiver:Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1$receiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
