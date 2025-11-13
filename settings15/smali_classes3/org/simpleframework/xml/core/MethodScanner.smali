.class Lorg/simpleframework/xml/core/MethodScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/MethodScanner$PartMap;
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final factory:Lorg/simpleframework/xml/core/MethodPartFactory;

.field private final read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

.field private final support:Lorg/simpleframework/xml/core/Support;

.field private final write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 12

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodScanner;->support:Lorg/simpleframework/xml/core/Support;

    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getAccess()Lorg/simpleframework/xml/DefaultType;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v3, v0}, Lorg/simpleframework/xml/core/Support;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    check-cast v0, Lorg/simpleframework/xml/core/MethodContact;

    iget-object v3, v0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    iget-object v0, v0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v7

    instance-of v7, v7, Lorg/simpleframework/xml/Text;

    if-eqz v7, :cond_0

    move-object v0, v6

    :cond_0
    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v6

    instance-of v6, v6, Lorg/simpleframework/xml/Text;

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_2
    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    sget-object v3, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    sget-object v4, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    sget-object v5, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    const/4 v6, 0x0

    if-ne v2, v0, :cond_12

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodDetail;

    iget-object v2, v0, Lorg/simpleframework/xml/core/MethodDetail;->list:[Ljava/lang/annotation/Annotation;

    iget-object v0, v0, Lorg/simpleframework/xml/core/MethodDetail;->method:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v8

    if-ne v8, v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    array-length v9, v8

    if-lez v9, :cond_5

    aget-object v8, v8, v1

    instance-of v9, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_5

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    goto :goto_2

    :cond_5
    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_6

    invoke-static {v8}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v8

    goto :goto_5

    :cond_6
    new-array v8, v1, [Ljava/lang/Class;

    goto :goto_5

    :cond_7
    if-ne v8, v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    goto :goto_3

    :cond_8
    move-object v8, v6

    :goto_3
    if-eqz v8, :cond_9

    invoke-static {v8}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v8

    goto :goto_5

    :cond_9
    new-array v8, v1, [Ljava/lang/Class;

    goto :goto_5

    :cond_a
    if-ne v8, v4, :cond_d

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_b

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    goto :goto_4

    :cond_b
    move-object v8, v6

    :goto_4
    if-eqz v8, :cond_c

    invoke-static {v8}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v8

    goto :goto_5

    :cond_c
    new-array v8, v1, [Ljava/lang/Class;

    goto :goto_5

    :cond_d
    move-object v8, v6

    :goto_5
    invoke-static {v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v7, v7, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v7, v9, v8}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    goto :goto_6

    :cond_e
    move-object v7, v6

    :goto_6
    if-eqz v7, :cond_f

    invoke-static {v0, v7, v2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    goto :goto_7

    :cond_f
    move-object v0, v6

    :goto_7
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v2

    if-ne v2, v3, :cond_10

    iget-object v7, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-ne v2, v4, :cond_11

    iget-object v7, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/MethodDetail;

    iget-object v0, p2, Lorg/simpleframework/xml/core/MethodDetail;->list:[Ljava/lang/annotation/Annotation;

    iget-object p2, p2, Lorg/simpleframework/xml/core/MethodDetail;->method:Ljava/lang/reflect/Method;

    array-length v2, v0

    move v7, v1

    :goto_8
    if-ge v7, v2, :cond_13

    aget-object v8, v0, v7

    instance-of v9, v8, Lorg/simpleframework/xml/Attribute;

    if-eqz v9, :cond_14

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_14
    instance-of v9, v8, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v9, :cond_15

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_15
    instance-of v9, v8, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v9, :cond_16

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_16
    instance-of v9, v8, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v9, :cond_17

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_17
    instance-of v9, v8, Lorg/simpleframework/xml/ElementList;

    if-eqz v9, :cond_18

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_18
    instance-of v9, v8, Lorg/simpleframework/xml/ElementArray;

    if-eqz v9, :cond_19

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_19
    instance-of v9, v8, Lorg/simpleframework/xml/ElementMap;

    if-eqz v9, :cond_1a

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_1a
    instance-of v9, v8, Lorg/simpleframework/xml/Element;

    if-eqz v9, :cond_1b

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_1b
    instance-of v9, v8, Lorg/simpleframework/xml/Version;

    if-eqz v9, :cond_1c

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_1c
    instance-of v9, v8, Lorg/simpleframework/xml/Text;

    if-eqz v9, :cond_1d

    invoke-virtual {p0, p2, v8, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_1d
    instance-of v9, v8, Lorg/simpleframework/xml/Transient;

    if-eqz v9, :cond_20

    iget-object v9, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v8, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v8

    invoke-interface {v8}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v9

    if-ne v9, v3, :cond_1e

    iget-object v10, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v8}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1e

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    if-ne v9, v4, :cond_1f

    iget-object v10, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v8}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1f

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-ne v9, v5, :cond_20

    iget-object v9, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {v8}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_21
    iget-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz p2, :cond_25

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_23

    new-instance v1, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v1, v0, p2}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Method types do not match for %s in %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_24
    new-instance p1, Lorg/simpleframework/xml/core/MethodException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Annotations do not match for \'%s\' in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_25
    new-instance p2, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {p2, v0, v6}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_26
    iget-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_28

    goto :goto_a

    :cond_28
    new-instance p1, Lorg/simpleframework/xml/core/MethodException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "No matching get method for %s in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_29
    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object p1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object p2

    sget-object p3, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne p2, p3, :cond_0

    iget-object p3, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p3, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p3, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne p2, p3, :cond_2

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
