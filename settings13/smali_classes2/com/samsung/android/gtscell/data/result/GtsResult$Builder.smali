.class public final Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;
.super Ljava/lang/Object;
.source "GtsResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsResult.kt\ncom/samsung/android/gtscell/data/result/GtsResult$Builder\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,36:1\n37#2,2:37\n*E\n*S KotlinDebug\n*F\n+ 1 GtsResult.kt\ncom/samsung/android/gtscell/data/result/GtsResult$Builder\n*L\n32#1,2:37\n*E\n"
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->READY:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/gtscell/data/result/GtsResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    .line 32
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    .line 38
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    .line 30
    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/gtscell/data/result/GtsResult;-><init>(Lcom/samsung/android/gtscell/data/result/GtsResult$State;[Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V

    return-object v1

    .line 38
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->itemResults:Ljava/util/List;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object p0
.end method

.method public final setState(Lcom/samsung/android/gtscell/data/result/GtsResult$State;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/result/GtsResult$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-void
.end method
