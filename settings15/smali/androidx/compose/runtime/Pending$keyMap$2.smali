.class final Landroidx/compose/runtime/Pending$keyMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/MutableScatterMultiMap;",
        "",
        "Landroidx/compose/runtime/KeyInfo;",
        "invoke-SAeQiB4",
        "()Landroidx/collection/MutableScatterMap;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Pending;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Pending;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    iget-object v1, v1, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Landroidx/collection/MutableScatterMap;

    invoke-direct {v2, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    iget-object p0, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    iget-object v1, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    iget-object v5, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/KeyInfo;

    iget-object v6, v5, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    iget v7, v5, Landroidx/compose/runtime/KeyInfo;->key:I

    if-eqz v6, :cond_0

    new-instance v6, Landroidx/compose/runtime/JoinedKey;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v5, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1

    move v8, v0

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    iget-object v9, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v7

    :goto_3
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    instance-of v10, v9, Ljava/util/List;

    if-eqz v10, :cond_5

    instance-of v10, v9, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v10, :cond_4

    instance-of v10, v9, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz v10, :cond_5

    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    goto :goto_4

    :cond_5
    filled-new-array {v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_4
    if-eqz v8, :cond_6

    not-int v7, v7

    iget-object v8, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aput-object v6, v8, v7

    iget-object v6, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v7

    goto :goto_5

    :cond_6
    iget-object v6, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v7

    :goto_5
    add-int/2addr v4, v0

    goto :goto_0

    :cond_7
    new-instance p0, Landroidx/compose/runtime/MutableScatterMultiMap;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/MutableScatterMultiMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    return-object p0
.end method
