.class public final Lkotlin/collections/AbstractMap$keys$1;
.super Lkotlin/collections/AbstractSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lkotlin/collections/AbstractMap;


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/AbstractMap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/AbstractMap;

    invoke-direct {p0}, Lkotlin/collections/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/AbstractMap;

    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/AbstractMap;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getSize()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/AbstractMap;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->getEntries()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapEntries;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapEntries;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lkotlin/collections/AbstractMap$keys$1$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/AbstractMap$keys$1$iterator$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
