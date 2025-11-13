.class public Lcom/android/framework/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final blacklist EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;


# instance fields
.field private blacklist delayedBytes:Lcom/android/framework/protobuf/ByteString;

.field private blacklist extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field private volatile blacklist memoizedBytes:Lcom/android/framework/protobuf/ByteString;

.field protected volatile blacklist value:Lcom/android/framework/protobuf/MessageLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method private static blacklist checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/LazyFieldLite;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LazyFieldLite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method private static blacklist mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method public blacklist containsDefaultInstance()Z
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected blacklist ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_2

    nop

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/android/framework/protobuf/Parser;->parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v2, v0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v1, v2}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_4
    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public blacklist getSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist merge(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->set(Lcom/android/framework/protobuf/LazyFieldLite;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_2
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist set(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .locals 1

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_0
    return-void
.end method

.method public blacklist setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1

    invoke-static {p2, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method public blacklist setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public blacklist toByteString()Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_0
    return-void
.end method
