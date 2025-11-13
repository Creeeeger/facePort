.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;
.super Lcom/samsung/android/gtscell/data/GtsListBuilder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/gtscell/data/GtsListBuilder<",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
        "Lcom/samsung/android/gtscell/data/GtsListBuilder;",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        "groupName",
        "",
        "(Ljava/lang/String;)V",
        "build",
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
.field private final groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->groupName:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p0

    return-object p0
.end method
