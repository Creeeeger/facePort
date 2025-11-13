.class public abstract Lcom/google/protobuf/ExtensionSchema;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extensionNumber(Ljava/util/Map$Entry;)I
.end method

.method public abstract findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
.end method

.method public abstract getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
.end method

.method public abstract getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
.end method

.method public abstract hasExtensions(Lcom/google/protobuf/MessageLite;)Z
.end method

.method public abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method public abstract parseExtension(Ljava/lang/Object;Lcom/google/protobuf/CodedInputStreamReader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
.end method

.method public abstract parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/CodedInputStreamReader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
.end method

.method public abstract parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
.end method

.method public abstract serializeExtension(Lcom/google/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V
.end method
