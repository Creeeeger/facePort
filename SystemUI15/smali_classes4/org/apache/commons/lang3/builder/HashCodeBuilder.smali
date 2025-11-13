.class public final Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final REGISTRY:Ljava/lang/ThreadLocal;


# instance fields
.field public final iConstant:I

.field public iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;[Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    new-instance v3, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v3, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v6, -0x1

    if-nez v5, :cond_3

    move v5, v2

    :goto_1
    array-length v7, p3

    if-ge v5, v7, :cond_5

    aget-object v7, p3, v5

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/2addr v5, v0

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_2
    array-length v8, p3

    if-ge v7, v8, :cond_5

    aget-object v8, p3, v7

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    add-int/2addr v7, v0

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_3
    if-eq v5, v6, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_7

    const-class v5, Lorg/apache/commons/lang3/builder/HashCodeExclude;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_5
    add-int/2addr v3, v0

    goto :goto_0

    :cond_8
    sget-object p1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_9

    new-instance p3, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {p3, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_9
    return-void

    :goto_6
    sget-object p2, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-eqz p3, :cond_a

    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_a
    throw p1
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, [J

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast p1, [J

    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_a

    aget-wide v4, p1, v3

    iget v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v6, v0

    shr-long v7, v4, v2

    xor-long/2addr v4, v7

    long-to-int v4, v4

    add-int/2addr v6, v4

    iput v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, [I

    if-eqz v1, :cond_2

    check-cast p1, [I

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_a

    aget v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v1, p1, [S

    if-eqz v1, :cond_3

    check-cast p1, [S

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_a

    aget-short v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    instance-of v1, p1, [C

    if-eqz v1, :cond_4

    check-cast p1, [C

    array-length v1, p1

    :goto_3
    if-ge v3, v1, :cond_a

    aget-char v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    instance-of v1, p1, [B

    if-eqz v1, :cond_5

    check-cast p1, [B

    array-length v1, p1

    :goto_4
    if-ge v3, v1, :cond_a

    aget-byte v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    instance-of v1, p1, [D

    if-eqz v1, :cond_6

    check-cast p1, [D

    array-length v1, p1

    :goto_5
    if-ge v3, v1, :cond_a

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v6, v0

    shr-long v7, v4, v2

    xor-long/2addr v4, v7

    long-to-int v4, v4

    add-int/2addr v6, v4

    iput v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    instance-of v1, p1, [F

    if-eqz v1, :cond_7

    check-cast p1, [F

    array-length v1, p1

    :goto_6
    if-ge v3, v1, :cond_a

    aget v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    instance-of v1, p1, [Z

    if-eqz v1, :cond_8

    check-cast p1, [Z

    array-length v1, p1

    :goto_7
    if-ge v3, v1, :cond_a

    aget-boolean v2, p1, v3

    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v4, v0

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    :goto_8
    if-ge v3, v0, :cond_a

    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    :cond_a
    :goto_9
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return p0
.end method
