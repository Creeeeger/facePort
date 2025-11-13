.class public Lcom/android/framework/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "MapEntryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist KEY_FIELD_NUMBER:I = 0x1

.field private static final blacklist VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final blacklist metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iput-object p2, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite$Metadata;-><init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iput-object p2, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method static blacklist computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v2, 0x2

    invoke-static {v1, v2, p2}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist newDefaultInstance(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/android/framework/protobuf/MapEntryLite<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/MapEntryLite;-><init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist parseEntry(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v0}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v1}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    if-nez v3, :cond_3

    nop

    :goto_1
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_3
    :goto_2
    goto :goto_0
.end method

.method static blacklist parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/MapEntryLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/framework/protobuf/FieldSet;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Groups are not allowed in maps."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v1, p2, p3}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist parseEntry(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, v1, p2}, Lcom/android/framework/protobuf/MapEntryLite;->parseEntry(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseInto(Lcom/android/framework/protobuf/MapFieldLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v2, v2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v3, v3, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v2}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v3}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v5

    if-nez v5, :cond_3

    nop

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_2
    goto :goto_0
.end method

.method public blacklist serializeTo(Lcom/android/framework/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {p1, v0, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
