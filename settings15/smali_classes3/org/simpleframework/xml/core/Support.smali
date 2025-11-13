.class public final Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field public final defaults:Lorg/simpleframework/xml/core/DetailExtractor;

.field public final details:Lorg/simpleframework/xml/core/DetailExtractor;

.field public final filter:Lorg/simpleframework/xml/filter/Filter;

.field public final format:Lorg/simpleframework/xml/stream/Format;

.field public final instances:Lorg/simpleframework/xml/core/InstanceFactory;

.field public final labels:Lorg/simpleframework/xml/core/LabelExtractor;

.field public final scanners:Lorg/simpleframework/xml/core/ScannerFactory;

.field public final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/filter/PlatformFilter;Lorg/simpleframework/xml/core/EmptyMatcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/DetailExtractor;

    sget-object v1, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/core/EmptyMatcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    new-instance p2, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {p2, p0}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    new-instance p2, Lorg/simpleframework/xml/core/DetailExtractor;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    new-instance p2, Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-direct {p2, p3}, Lorg/simpleframework/xml/core/LabelExtractor;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    new-instance p2, Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-direct {p2}, Lorg/simpleframework/xml/core/InstanceFactory;-><init>()V

    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method public static getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Byte;

    :cond_7
    return-object p0
.end method


# virtual methods
.method public final getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    new-instance v1, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, p0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    new-instance v1, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, p0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelKey;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelKey;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget p2, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    if-lez p2, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lorg/simpleframework/xml/core/Label;

    :cond_0
    return-object p1
.end method

.method public final getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    new-instance v1, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, p0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    new-instance v1, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, p0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 5

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    iget-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Scanner;

    if-nez v1, :cond_4

    iget-object p0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lorg/simpleframework/xml/core/PrimitiveScanner;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PrimitiveScanner;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    move-object v1, p0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-direct {v2, v1, p0}, Lorg/simpleframework/xml/core/ObjectScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iget-object v3, v2, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-boolean v3, v3, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    if-eqz v3, :cond_3

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_3

    new-instance v2, Lorg/simpleframework/xml/core/DefaultScanner;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lorg/simpleframework/xml/core/DefaultDetail;

    invoke-direct {v3, v1}, Lorg/simpleframework/xml/core/DefaultDetail;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    iput-object v3, v2, Lorg/simpleframework/xml/core/DefaultScanner;->detail:Lorg/simpleframework/xml/core/DefaultDetail;

    new-instance v1, Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-direct {v1, v3, p0}, Lorg/simpleframework/xml/core/ObjectScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v1, v2, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public final isPrimitive(Ljava/lang/Class;)Z
    .locals 2

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
