.class Lorg/simpleframework/xml/core/LabelMap;
.super Ljava/util/LinkedHashMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/Label;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lorg/simpleframework/xml/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private final policy:Lorg/simpleframework/xml/core/Policy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    return-void
.end method


# virtual methods
.method public final getLabels()Lorg/simpleframework/xml/core/LabelMap;
    .locals 3

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final isStrict(Lorg/simpleframework/xml/core/Source;)Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    if-nez p0, :cond_0

    iget-object p0, p1, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/Session;->strict:Z

    return p0

    :cond_0
    iget-object p1, p1, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    iget-boolean p1, p1, Lorg/simpleframework/xml/core/Session;->strict:Z

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Policy;->isStrict()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
