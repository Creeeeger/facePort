.class public final Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
.super Ljava/lang/Object;
.source "SehAppStatus.java"


# instance fields
.field public blacklist base:Landroid/hardware/radio/V1_0/AppStatus;

.field public blacklist persoUnblockRetries:I

.field public blacklist pin1NumRetries:I

.field public blacklist pin2NumRetries:I

.field public blacklist puk1NumRetries:I

.field public blacklist puk2NumRetries:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_0/AppStatus;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/AppStatus;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    .line 16
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    .line 24
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    .line 28
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

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
            "Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 105
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 105
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 109
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 111
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;-><init>()V

    .line 112
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
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
            "Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 141
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 142
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 143
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 144
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 145
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 150
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 33
    return v0

    .line 35
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 36
    return v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    if-eq v2, v3, :cond_2

    .line 39
    return v1

    .line 41
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    .line 42
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 43
    return v1

    .line 45
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    if-eq v3, v4, :cond_4

    .line 46
    return v1

    .line 48
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    if-eq v3, v4, :cond_5

    .line 49
    return v1

    .line 51
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    if-eq v3, v4, :cond_6

    .line 52
    return v1

    .line 54
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    if-eq v3, v4, :cond_7

    .line 55
    return v1

    .line 57
    :cond_7
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    if-eq v3, v4, :cond_8

    .line 58
    return v1

    .line 60
    :cond_8
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    .line 66
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 122
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/AppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    .line 124
    const-wide/16 v0, 0x44

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    .line 125
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    .line 126
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    .line 127
    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    .line 128
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 95
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 96
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .pin1NumRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .puk1NumRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .pin2NumRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .puk2NumRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .persoUnblockRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 155
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/AppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 156
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 158
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 160
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 161
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 131
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 134
    return-void
.end method
