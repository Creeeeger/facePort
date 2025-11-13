.class public Landroid/internal/framework/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BOOL:I = 0x8

.field public static final blacklist TYPE_BYTES:I = 0xc

.field public static final blacklist TYPE_DOUBLE:I = 0x1

.field public static final blacklist TYPE_ENUM:I = 0xe

.field public static final blacklist TYPE_FIXED32:I = 0x7

.field public static final blacklist TYPE_FIXED64:I = 0x6

.field public static final blacklist TYPE_FLOAT:I = 0x2

.field public static final blacklist TYPE_GROUP:I = 0xa

.field public static final blacklist TYPE_INT32:I = 0x5

.field public static final blacklist TYPE_INT64:I = 0x3

.field public static final blacklist TYPE_MESSAGE:I = 0xb

.field public static final blacklist TYPE_SFIXED32:I = 0xf

.field public static final blacklist TYPE_SFIXED64:I = 0x10

.field public static final blacklist TYPE_SINT32:I = 0x11

.field public static final blacklist TYPE_SINT64:I = 0x12

.field public static final blacklist TYPE_STRING:I = 0x9

.field public static final blacklist TYPE_UINT32:I = 0xd

.field public static final blacklist TYPE_UINT64:I = 0x4


# instance fields
.field protected final blacklist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final blacklist repeated:Z

.field public final blacklist tag:I

.field protected final blacklist type:I


# direct methods
.method private constructor blacklist <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    iput-object p2, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iput p3, p0, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    iput-boolean p4, p0, Landroid/internal/framework/protobuf/nano/Extension;->repeated:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Class;IZLandroid/internal/framework/protobuf/nano/Extension$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/internal/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;I)Landroid/internal/framework/protobuf/nano/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Landroid/internal/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/internal/framework/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/internal/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;J)Landroid/internal/framework/protobuf/nano/Extension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Landroid/internal/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/internal/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/internal/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createPrimitiveTyped(ILjava/lang/Class;J)Landroid/internal/framework/protobuf/nano/Extension;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    new-instance v7, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v7
.end method

.method public static blacklist createRepeatedMessageTyped(ILjava/lang/Class;J)Landroid/internal/framework/protobuf/nano/Extension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Landroid/internal/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "[TT;>;J)",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;[TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/internal/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/internal/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Landroid/internal/framework/protobuf/nano/Extension;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;JJJ)",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    new-instance v7, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    long-to-int v5, p4

    long-to-int v6, p6

    const/4 v4, 0x1

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v7
.end method

.method private blacklist getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    iget-object v3, v2, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, v0}, Landroid/internal/framework/protobuf/nano/Extension;->readDataInto(Landroid/internal/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private blacklist getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/internal/framework/protobuf/nano/Extension;->readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/internal/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method blacklist computeSerializedSize(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object v1, p1

    check-cast v1, Landroid/internal/framework/protobuf/nano/MessageNano;

    invoke-static {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v2

    return v2

    :pswitch_1
    move-object v1, p1

    check-cast v1, Landroid/internal/framework/protobuf/nano/MessageNano;

    invoke-static {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final blacklist getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected blacklist readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 5

    const-string v0, "Error creating instance of class "

    iget-boolean v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    :goto_0
    :try_start_0
    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    return-object v2

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/framework/protobuf/nano/MessageNano;

    iget v3, p0, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readGroup(Landroid/internal/framework/protobuf/nano/MessageNano;I)V

    return-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist readDataInto(Landroid/internal/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/Extension;->readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Landroid/internal/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected blacklist writeSingularData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/internal/framework/protobuf/nano/MessageNano;

    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/internal/framework/protobuf/nano/MessageNano;

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    nop

    :goto_0
    nop

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist writeTo(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/internal/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/internal/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/internal/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    :goto_0
    return-void
.end method
