.class final Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$1;
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
.field final synthetic $callback:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;

.field final synthetic $commandQueue:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$1;->$commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$1;->$callback:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$1;->$commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$1;->$callback:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
