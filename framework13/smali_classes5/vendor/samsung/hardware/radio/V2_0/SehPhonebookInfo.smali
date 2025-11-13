.class public final Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
.super Ljava/lang/Object;
.source "SehPhonebookInfo.java"


# instance fields
.field public blacklist firstIndex:I

.field public blacklist maxNumberLength:I

.field public blacklist maxTextLength:I

.field public blacklist totalCount:I

.field public blacklist usedCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    .line 12
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    .line 16
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    .line 24
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

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
            "Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 99
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 101
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;-><init>()V

    .line 102
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    mul-int/lit8 v6, v4, 0x14

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
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
            "Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 130
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 131
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 132
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 133
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 134
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 32
    return v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    if-eq v2, v3, :cond_2

    .line 35
    return v1

    .line 37
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    .line 38
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    if-eq v3, v4, :cond_3

    .line 39
    return v1

    .line 41
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    if-eq v3, v4, :cond_4

    .line 42
    return v1

    .line 44
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    if-eq v3, v4, :cond_5

    .line 45
    return v1

    .line 47
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    if-eq v3, v4, :cond_6

    .line 48
    return v1

    .line 50
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    if-eq v3, v4, :cond_7

    .line 51
    return v1

    .line 53
    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 112
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    .line 113
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    .line 114
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    .line 115
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    .line 116
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    .line 117
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 85
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".totalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .usedCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .firstIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .maxTextLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .maxNumberLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 144
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 147
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 149
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 120
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 123
    return-void
.end method
