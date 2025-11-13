.class public final Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;",
        "",
        "()V",
        "itemResults",
        "",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "getItemResults",
        "()Ljava/util/List;",
        "state",
        "Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
        "getState",
        "()Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
        "setState",
        "(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V",
        "build",
        "Lcom/samsung/android/gtscell/data/result/GtsResult;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final itemResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->READY:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/gtscell/data/result/GtsResult;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/gtscell/data/result/GtsResult;-><init>(Lcom/samsung/android/gtscell/data/result/GtsResult$State;[Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    return-object v1

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object p0
.end method

.method public final setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-void
.end method
