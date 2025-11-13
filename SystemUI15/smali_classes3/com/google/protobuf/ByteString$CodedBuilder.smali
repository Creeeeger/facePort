.class public final Lcom/google/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:[B

.field public final output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;


# direct methods
.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    sget-object v1, Lcom/google/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    new-instance v1, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    iput-object v1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/protobuf/ByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method
