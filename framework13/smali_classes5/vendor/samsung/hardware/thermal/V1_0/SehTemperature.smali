.class public final Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;
.super Ljava/lang/Object;
.source "SehTemperature.java"


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist value:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

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
            "Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 78
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 79
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 80
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 79
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 83
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 85
    new-instance v5, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;

    invoke-direct {v5}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;-><init>()V

    .line 86
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
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
            "Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 117
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 119
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 120
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 122
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 127
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 25
    return v0

    .line 27
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;

    if-eq v2, v3, :cond_2

    .line 31
    return v1

    .line 33
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;

    .line 34
    .local v2, "other":Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;
    iget v3, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    iget v4, v2, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    if-eq v3, v4, :cond_3

    .line 35
    return v1

    .line 37
    :cond_3
    iget-object v3, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    iget v4, v2, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 41
    return v1

    .line 43
    :cond_5
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    .line 51
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 96
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    .line 97
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    .line 99
    nop

    .line 100
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 99
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 104
    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    .line 105
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 69
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 70
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 71
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    invoke-static {v1}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperatureType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 132
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 133
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 134
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->value:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 135
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 108
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 109
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 111
    return-void
.end method
