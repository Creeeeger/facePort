.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;
.super Lcom/samsung/android/gtscell/data/GtsListBuilder;
.source "GtsItemSupplierGroupBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/gtscell/data/GtsListBuilder<",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    .line 8
    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->groupName:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p0

    return-object p0
.end method
