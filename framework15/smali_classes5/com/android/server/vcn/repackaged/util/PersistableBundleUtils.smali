.class public Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;,
        Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;,
        Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;,
        Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$LockingReadWriteHelper;
    }
.end annotation


# static fields
.field private static final blacklist BYTE_ARRAY_KEY:Ljava/lang/String; = "BYTE_ARRAY_KEY"

.field private static final blacklist COLLECTION_SIZE_KEY:Ljava/lang/String; = "COLLECTION_LENGTH"

.field public static final blacklist INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INTEGER_KEY:Ljava/lang/String; = "INTEGER_KEY"

.field public static final blacklist INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIST_KEY_FORMAT:Ljava/lang/String; = "LIST_ITEM_%d"

.field private static final blacklist MAP_KEY_FORMAT:Ljava/lang/String; = "MAP_KEY_%d"

.field private static final blacklist MAP_VALUE_FORMAT:Ljava/lang/String; = "MAP_VALUE_%d"

.field private static final blacklist PARCEL_UUID_KEY:Ljava/lang/String; = "PARCEL_UUID"

.field public static final blacklist STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STRING_KEY:Ljava/lang/String; = "STRING_KEY"

.field public static final blacklist STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    new-instance v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    new-instance v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    new-instance v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "BYTE_ARRAY_KEY"

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist fromDiskStableBytes([B)Landroid/os/PersistableBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer<",
            "TT;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "LIST_ITEM_%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist fromMap(Ljava/util/Map;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer<",
            "TK;>;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer<",
            "TV;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_KEY_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "MAP_VALUE_%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "PARCEL_UUID"

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getHashCode(Landroid/os/PersistableBundle;)I
    .locals 7

    if-nez p0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_1

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    invoke-static {v6}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :goto_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .locals 8

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v5}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    return v3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    return v3

    :cond_5
    instance-of v6, v4, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_6

    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    move-object v7, v5

    check-cast v7, Landroid/os/PersistableBundle;

    invoke-static {v6, v7}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_b

    instance-of v6, v4, [Z

    if-eqz v6, :cond_7

    move-object v6, v4

    check-cast v6, [Z

    move-object v7, v5

    check-cast v7, [Z

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_7
    instance-of v6, v4, [D

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, [D

    move-object v7, v5

    check-cast v7, [D

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_8
    instance-of v6, v4, [I

    if-eqz v6, :cond_9

    move-object v6, v4

    check-cast v6, [I

    move-object v7, v5

    check-cast v7, [I

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_9
    instance-of v6, v4, [J

    if-eqz v6, :cond_a

    move-object v6, v4

    check-cast v6, [J

    move-object v7, v5

    check-cast v7, [J

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_a
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_b
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    return v3

    :cond_c
    goto/16 :goto_0

    :cond_d
    return v1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "INTEGER_KEY"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "INTEGER_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "STRING_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$3(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "STRING_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 7

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_2
    instance-of v5, v4, [Z

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, [Z

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_1

    :cond_3
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_4
    instance-of v5, v4, [D

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, [D

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_1

    :cond_5
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    instance-of v5, v4, [I

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, [I

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_7
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    instance-of v5, v4, [J

    if-eqz v5, :cond_9

    move-object v5, v4

    check-cast v5, [J

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_1

    :cond_9
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_c

    move-object v5, v4

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method

.method public static blacklist toByteArray(Landroid/os/PersistableBundle;)[B
    .locals 3

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BYTE_ARRAY_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PersistableBundle contains invalid byte array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toDiskStableBytes(Landroid/os/PersistableBundle;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "LIST_ITEM_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static blacklist toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer<",
            "TK;>;",
            "Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MAP_KEY_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_VALUE_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-interface {p1, v5}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v6}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static blacklist toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;
    .locals 1

    const-string v0, "PARCEL_UUID"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method
