.class public Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private wasThrownFromInputStream:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method

.method public static invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getThrownFromInputStream()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return p0
.end method

.method public final setThrownFromInputStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return-void
.end method

.method public final setUnfinishedMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method
