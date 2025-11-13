.class public final Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
.super Ljava/lang/Object;
.source "SehSimPhonebookResponse.java"


# instance fields
.field public blacklist alphaTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist dataTypeAlphas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist dataTypeNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lengthAlphas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lengthNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist nextIndex:I

.field public blacklist numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist recordIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    .line 36
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 124
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 125
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 126
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 125
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 129
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 131
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;-><init>()V

    .line 132
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    mul-int/lit8 v6, v4, 0x68

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 246
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 247
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 248
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 249
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 250
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 251
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    mul-int/lit8 v5, v3, 0x68

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 256
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 257
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 41
    return v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 44
    return v1

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    if-eq v2, v3, :cond_2

    .line 47
    return v1

    .line 49
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    .line 50
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    return v1

    .line 53
    :cond_3
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 54
    return v1

    .line 56
    :cond_4
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 57
    return v1

    .line 59
    :cond_5
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 60
    return v1

    .line 62
    :cond_6
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 63
    return v1

    .line 65
    :cond_7
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 66
    return v1

    .line 68
    :cond_8
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    if-eq v3, v4, :cond_9

    .line 69
    return v1

    .line 71
    :cond_9
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    if-eq v3, v4, :cond_a

    .line 72
    return v1

    .line 74
    :cond_a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    .line 82
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    .line 83
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    .line 84
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 144
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, p3, v2

    add-long/2addr v13, v2

    .line 144
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 148
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 150
    const/4 v9, 0x0

    .line 151
    .local v9, "_hidl_vec_element":I
    mul-int/lit8 v10, v8, 0x4

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 152
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x10

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 157
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    const/16 v17, 0x1

    .line 157
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 161
    .local v4, "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 162
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 163
    const/4 v9, 0x0

    .line 164
    .restart local v9    # "_hidl_vec_element":I
    mul-int/lit8 v10, v5, 0x4

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 165
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v4, 0x20

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 170
    .restart local v8    # "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x10

    int-to-long v11, v9

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    const/16 v17, 0x1

    .line 170
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 174
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v5, 0x0

    .restart local v5    # "_hidl_index_0":I
    :goto_2
    if-ge v5, v8, :cond_2

    .line 176
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 177
    .local v9, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v10, v5, 0x10

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v9

    .line 179
    nop

    .line 180
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v12, v10

    .line 181
    invoke-virtual {v4}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    mul-int/lit8 v10, v5, 0x10

    add-int/lit8 v10, v10, 0x0

    int-to-long v10, v10

    const/16 v18, 0x0

    .line 179
    move-wide/from16 v16, v10

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 184
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v9    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 188
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v4, 0x30

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 189
    .restart local v8    # "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    const/16 v17, 0x1

    .line 189
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 193
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 194
    const/4 v5, 0x0

    .restart local v5    # "_hidl_index_0":I
    :goto_3
    if-ge v5, v8, :cond_3

    .line 195
    const/4 v9, 0x0

    .line 196
    .local v9, "_hidl_vec_element":I
    mul-int/lit8 v10, v5, 0x4

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 197
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 201
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_3
    const-wide/16 v4, 0x40

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 202
    .restart local v8    # "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    const/16 v17, 0x1

    .line 202
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 206
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 207
    const/4 v5, 0x0

    .restart local v5    # "_hidl_index_0":I
    :goto_4
    if-ge v5, v8, :cond_4

    .line 208
    const/4 v9, 0x0

    .line 209
    .restart local v9    # "_hidl_vec_element":I
    mul-int/lit8 v10, v5, 0x4

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 210
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 214
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_4
    const-wide/16 v4, 0x50

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 215
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x10

    int-to-long v9, v7

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    const/4 v15, 0x1

    .line 215
    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 219
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 220
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_5
    if-ge v3, v6, :cond_5

    .line 221
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 222
    .local v4, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 224
    nop

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v8, v5

    .line 226
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    mul-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x0

    int-to-long v12, v5

    const/4 v14, 0x0

    .line 224
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 229
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v4    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 232
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    :cond_5
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    .line 233
    const-wide/16 v2, 0x64

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    .line 234
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 115
    const-wide/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 116
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ".lengthAlphas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .dataTypeAlphas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .alphaTags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .lengthNumbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .dataTypeNumbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .numbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .recordIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .nextIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 263
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 264
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 265
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 266
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 267
    mul-int/lit8 v12, v6, 0x4

    int-to-long v12, v12

    iget-object v14, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 269
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v12, p2, v3

    add-long/2addr v12, v3

    invoke-virtual {v1, v12, v13, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 272
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 273
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v12, p2, v5

    add-long/2addr v12, v7

    invoke-virtual {v1, v12, v13, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 274
    add-long v12, p2, v5

    add-long/2addr v12, v9

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 275
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v2, 0x4

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 276
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_1
    if-ge v13, v2, :cond_1

    .line 277
    mul-int/lit8 v14, v13, 0x4

    int-to-long v14, v14

    iget-object v11, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v14, v15, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 276
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 279
    .end local v13    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 282
    .end local v2    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 283
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 284
    add-long v11, p2, v5

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 285
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 286
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_2
    if-ge v12, v2, :cond_2

    .line 287
    mul-int/lit8 v13, v12, 0x10

    int-to-long v13, v13

    iget-object v15, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 286
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 289
    .end local v12    # "_hidl_index_0":I
    :cond_2
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 292
    .end local v2    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 293
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x30

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 294
    add-long v11, p2, v5

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 295
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 296
    .restart local v11    # "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .restart local v12    # "_hidl_index_0":I
    :goto_3
    if-ge v12, v2, :cond_3

    .line 297
    mul-int/lit8 v13, v12, 0x4

    int-to-long v13, v13

    iget-object v15, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 296
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 299
    .end local v12    # "_hidl_index_0":I
    :cond_3
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 302
    .end local v2    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 303
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x40

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 304
    add-long v11, p2, v5

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 305
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 306
    .restart local v11    # "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .restart local v12    # "_hidl_index_0":I
    :goto_4
    if-ge v12, v2, :cond_4

    .line 307
    mul-int/lit8 v13, v12, 0x4

    int-to-long v13, v13

    iget-object v15, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 309
    .end local v12    # "_hidl_index_0":I
    :cond_4
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 312
    .end local v2    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 313
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x50

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    add-long v7, p2, v5

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 315
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 316
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_5
    if-ge v8, v2, :cond_5

    .line 317
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 316
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 319
    .end local v8    # "_hidl_index_0":I
    :cond_5
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 321
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x60

    add-long v2, p2, v2

    iget v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    const-wide/16 v2, 0x64

    add-long v2, p2, v2

    iget v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 323
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 237
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 238
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 240
    return-void
.end method
