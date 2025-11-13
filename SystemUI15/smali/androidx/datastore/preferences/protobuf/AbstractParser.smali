.class public abstract Landroidx/datastore/preferences/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFrom(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 0

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->newCodedInput()Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;

    move-result-object p2

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-static {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parsePartialFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isInitialized(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    invoke-direct {p1, p0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    new-instance p2, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    throw p2

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    throw p1
.end method
