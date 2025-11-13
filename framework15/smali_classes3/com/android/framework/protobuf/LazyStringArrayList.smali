.class public Lcom/android/framework/protobuf/LazyStringArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;,
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/framework/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Lcom/android/framework/protobuf/LazyStringList;

.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;


# instance fields
.field private final blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->makeImmutable()V

    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY:Lcom/android/framework/protobuf/LazyStringList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringList;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(I[B)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist add(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method private blacklist add(I[B)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method private static blacklist asByteArray(Ljava/lang/Object;)[B
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, [B

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist emptyList()Lcom/android/framework/protobuf/LazyStringArrayList;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    return-object v0
.end method

.method private blacklist setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setAndReturn(I[B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist add(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public blacklist add(Lcom/android/framework/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public blacklist add([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return v0
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return v0
.end method

.method public blacklist asByteArrayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public blacklist asByteStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public whitelist test-api clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public bridge synthetic whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    instance-of v1, v0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2

    :cond_2
    move-object v1, v0

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public blacklist getByteArray(I)[B
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->isModifiable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/android/framework/protobuf/LazyStringList;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist isModifiable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->isModifiable()Z

    move-result v0

    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, [B

    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist set(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api size()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
