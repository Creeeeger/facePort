.class public final Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
.super Ljava/lang/Object;
.source "SehExtendedRegStateResult.java"


# instance fields
.field public blacklist imsEmergencyCallBarring:I

.field public blacklist isPsOnlyReg:Z

.field public blacklist isValid:Z

.field public blacklist mobileOptionalRat:I

.field public blacklist snapshotStatus:I

.field public blacklist unprocessedDataRat:I

.field public blacklist unprocessedDataRegState:I

.field public blacklist unprocessedVoiceRegState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    .line 12
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    .line 16
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    .line 24
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    .line 28
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    .line 32
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 36
    iput-boolean v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

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
            "Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;>;"
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
    mul-int/lit8 v3, v2, 0x20

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
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;-><init>()V

    .line 132
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
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
            "Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 164
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 167
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 173
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

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    if-eq v2, v3, :cond_2

    .line 47
    return v1

    .line 49
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    .line 50
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    iget-boolean v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    if-eq v3, v4, :cond_3

    .line 51
    return v1

    .line 53
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    if-eq v3, v4, :cond_4

    .line 54
    return v1

    .line 56
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    if-eq v3, v4, :cond_5

    .line 57
    return v1

    .line 59
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    if-eq v3, v4, :cond_6

    .line 60
    return v1

    .line 62
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    if-eq v3, v4, :cond_7

    .line 63
    return v1

    .line 65
    :cond_7
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    if-eq v3, v4, :cond_8

    .line 66
    return v1

    .line 68
    :cond_8
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    if-eq v3, v4, :cond_9

    .line 69
    return v1

    .line 71
    :cond_9
    iget-boolean v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

    iget-boolean v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

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

    iget-boolean v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

    .line 87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 142
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    .line 143
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    .line 144
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 145
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    .line 146
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    .line 147
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    .line 148
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 149
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

    .line 150
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 115
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 116
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".isValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-boolean v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .snapshotStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .unprocessedDataRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .unprocessedDataRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .mobileOptionalRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .imsEmergencyCallBarring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .unprocessedVoiceRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .isPsOnlyReg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 177
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 178
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 180
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 181
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 182
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->imsEmergencyCallBarring:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 183
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 184
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 185
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 153
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 156
    return-void
.end method
