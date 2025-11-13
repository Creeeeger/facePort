.class final Lcom/android/framework/protobuf/CodedOutputStreamWriter;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Lcom/android/framework/protobuf/Writer;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist output:Lcom/android/framework/protobuf/CodedOutputStream;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/CodedOutputStream;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    iput-object p0, v0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    return-void
.end method

.method public static blacklist forCodedOutput(Lcom/android/framework/protobuf/CodedOutputStream;)Lcom/android/framework/protobuf/CodedOutputStreamWriter;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;-><init>(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-object v0
.end method

.method private blacklist writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(IZTV;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Boolean;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p4, v1, p3}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p4, v1, p3}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist writeDeterministicIntegerMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    aput v3, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2, v7, v5}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, p2, v7, v5}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist writeDeterministicLongMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    aput-wide v3, v0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v8, 0x2

    invoke-virtual {v7, p1, v8}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v7, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p2, v8, v6}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v7, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, p2, v8, v6}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist writeDeterministicMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/CodedOutputStreamWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "does not support key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicStringMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicLongMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicIntegerMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist writeDeterministicStringMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2, v4, v5}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v6, p2, v4, v5}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist writeLazyString(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public blacklist getTotalBytesWritten()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    return v0
.end method

.method public blacklist writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBool(IZ)V

    return-void
.end method

.method public blacklist writeBoolList(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBool(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method public blacklist writeBytesList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDouble(ID)V

    return-void
.end method

.method public blacklist writeDoubleList(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDouble(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeEndGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public blacklist writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnum(II)V

    return-void
.end method

.method public blacklist writeEnumList(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    return-void
.end method

.method public blacklist writeFixed32List(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    return-void
.end method

.method public blacklist writeFixed64List(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloat(IF)V

    return-void
.end method

.method public blacklist writeFloatList(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;)V

    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    return-void
.end method

.method public blacklist writeGroupList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    return-void
.end method

.method public blacklist writeInt32List(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64(IJ)V

    return-void
.end method

.method public blacklist writeInt64List(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, p2, v3, v4}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    return-void
.end method

.method public blacklist writeMessageList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final blacklist writeMessageSetItem(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V

    :goto_0
    return-void
.end method

.method public blacklist writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32(II)V

    return-void
.end method

.method public blacklist writeSFixed32List(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    return-void
.end method

.method public blacklist writeSFixed64List(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32(II)V

    return-void
.end method

.method public blacklist writeSInt32List(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    return-void
.end method

.method public blacklist writeSInt64List(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist writeStringList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeLazyString(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method

.method public blacklist writeUInt32List(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method public blacklist writeUInt64List(ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
