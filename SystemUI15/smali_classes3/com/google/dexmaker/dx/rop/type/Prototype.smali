.class public final Lcom/google/dexmaker/dx/rop/type/Prototype;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final internTable:Ljava/util/HashMap;


# instance fields
.field public final descriptor:Ljava/lang/String;

.field public final parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public final returnType:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/StdTypeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    iput-object p3, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameterTypes == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "returnType == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Prototype;
    .locals 10

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Prototype;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "bad descriptor"

    const/16 v5, 0x28

    if-ne v3, v5, :cond_d

    move v3, v0

    move v5, v2

    :goto_0
    const/16 v6, 0x29

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x41

    if-lt v7, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_2

    add-int/2addr v5, v0

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_c

    sub-int/2addr v1, v0

    if-eq v3, v1, :cond_c

    add-int/2addr v3, v0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    new-array v1, v5, [Lcom/google/dexmaker/dx/rop/type/Type;

    move v4, v0

    move v5, v2

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_7

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    :try_start_1
    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    :goto_3
    new-instance v4, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    invoke-direct {v4, v5}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    :goto_4
    if-ge v2, v5, :cond_5

    aget-object v6, v1, v2

    invoke-virtual {v4, v2, v6}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    add-int/2addr v2, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Prototype;

    invoke-direct {v0, p0, v3, v4}, Lcom/google/dexmaker/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/StdTypeList;)V

    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_2
    iget-object v1, v0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Prototype;

    if-eqz v2, :cond_6

    monitor-exit p0

    move-object v0, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    :goto_5
    return-object v0

    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    move v8, v4

    :goto_7
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_8

    add-int/2addr v8, v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    :cond_8
    const/16 v9, 0x4c

    if-ne v7, v9, :cond_a

    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v3, :cond_9

    add-int/2addr v7, v0

    goto :goto_8

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v7, v8, 0x1

    :goto_8
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v4

    aput-object v4, v1, v5

    add-int/2addr v5, v0

    move v4, v7

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object v1, v1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    iget-object v1, v1, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    iget-object v2, v2, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    invoke-virtual {v5, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->get(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v5

    iget-object v6, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    invoke-virtual {v6, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->get(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v6

    iget-object v5, v5, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object p0
.end method
