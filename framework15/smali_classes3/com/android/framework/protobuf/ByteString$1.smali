.class Lcom/android/framework/protobuf/ByteString$1;
.super Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist limit:I

.field private blacklist position:I

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/ByteString;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextByte()B
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
