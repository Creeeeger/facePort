.class Lorg/simpleframework/xml/core/ModelMap;
.super Ljava/util/LinkedHashMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public final getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 6

    new-instance v0, Lorg/simpleframework/xml/core/ModelMap;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/ModelList;

    if-eqz v3, :cond_1

    new-instance v4, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v4}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {v4, v5}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/TreeModel;)V

    goto :goto_1

    :cond_0
    move-object v3, v4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Path with name \'%s\' is a duplicate in %s "

    invoke-direct {v0, v1, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final lookup(ILjava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;
    .locals 1

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/ModelList;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/simpleframework/xml/core/TreeModel;

    :cond_0
    return-object p2
.end method
