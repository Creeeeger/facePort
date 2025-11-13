.class public abstract Landroidx/datastore/preferences/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageLite;


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method


# virtual methods
.method public getMemoizedSerializedSize()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->setMemoizedSerializedSize(I)V

    :cond_0
    return v0
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toByteString()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 4

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    new-instance v2, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;

    invoke-direct {v2, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;-><init>(ILandroidx/datastore/preferences/protobuf/ByteString$1;)V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->output:Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;

    move-object v1, p0

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    iget v1, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    iget-object v1, v2, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
