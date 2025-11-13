.class public final Lorg/simpleframework/xml/core/ModelAssembler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field public final detail:Lorg/simpleframework/xml/core/Detail;

.field public final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p3, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method

.method public static registerAttributes(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V
    .locals 4

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, v1, v0}, Lorg/simpleframework/xml/core/TreeModel;->register(ILjava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object p0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPath()Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final registerElements(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V
    .locals 5

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2, v1, v0}, Lorg/simpleframework/xml/core/TreeModel;->register(ILjava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPath()Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V

    :cond_0
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    iget-object v4, p1, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v4, v3, v1}, Lorg/simpleframework/xml/core/ModelMap;->lookup(ILjava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/PathException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1, v2, v1, v0}, Lorg/simpleframework/xml/core/TreeModel;->register(ILjava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    return-void
.end method
