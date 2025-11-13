.class public abstract Landroidx/datastore/preferences/protobuf/ExtensionSchema;
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

.method public abstract findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;
.end method

.method public abstract getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
.end method

.method public abstract getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
.end method

.method public abstract hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z
.end method

.method public abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method public abstract parseExtension(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
.end method

.method public abstract parseMessageSetItem(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
.end method

.method public abstract serializeExtension(Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;Ljava/util/Map$Entry;)V
.end method
