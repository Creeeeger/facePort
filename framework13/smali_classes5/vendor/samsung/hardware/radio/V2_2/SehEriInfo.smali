.class public final Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
.super Ljava/lang/Object;
.source "SehEriInfo.java"


# instance fields
.field public blacklist eriText:Ljava/lang/String;

.field public blacklist iconIndex:B

.field public blacklist iconMode:B

.field public blacklist roamingIndicator:B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    .line 14
    iput-byte v0, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    .line 19
    iput-byte v0, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

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
            "Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 87
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 88
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 89
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 88
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 92
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 94
    new-instance v5, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;-><init>()V

    .line 95
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
    mul-int/lit8 v6, v4, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
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
            "Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 128
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 129
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 130
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 131
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 132
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 137
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 28
    return v0

    .line 30
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 31
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    if-eq v2, v3, :cond_2

    .line 34
    return v1

    .line 36
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    .line 37
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
    iget-byte v3, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    iget-byte v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    if-eq v3, v4, :cond_3

    .line 38
    return v1

    .line 40
    :cond_3
    iget-byte v3, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    iget-byte v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    if-eq v3, v4, :cond_4

    .line 41
    return v1

    .line 43
    :cond_4
    iget-byte v3, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    iget-byte v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    if-eq v3, v4, :cond_5

    .line 44
    return v1

    .line 46
    :cond_5
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 47
    return v1

    .line 49
    :cond_6
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    .line 56
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    .line 57
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 105
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    .line 106
    const-wide/16 v4, 0x1

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    .line 107
    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    .line 108
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    .line 110
    nop

    .line 111
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 110
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 115
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 78
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 79
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 80
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".roamingIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .iconIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .iconMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-byte v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .eriText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 142
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->roamingIndicator:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 143
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconIndex:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 144
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->iconMode:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 145
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->eriText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 118
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 121
    return-void
.end method
