.class public final Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
.super Ljava/lang/Object;
.source "SehSignalBar.java"


# instance fields
.field public blacklist cdmaLevel:I

.field public blacklist evdoLevel:I

.field public blacklist gsmLevel:I

.field public blacklist lteLevel:I

.field public blacklist nrLevel:I

.field public blacklist tdscdmaLevel:I

.field public blacklist wcdmaLevel:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    .line 12
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    .line 16
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    .line 24
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    .line 28
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    .line 32
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

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
            "Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 114
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 115
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x1c

    int-to-long v5, v3

    .line 116
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 115
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 119
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 121
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;-><init>()V

    .line 122
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    mul-int/lit8 v6, v4, 0x1c

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
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
            "Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 151
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 152
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 153
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 154
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 155
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 156
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    mul-int/lit8 v5, v3, 0x1c

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 161
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 162
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 40
    return v1

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    if-eq v2, v3, :cond_2

    .line 43
    return v1

    .line 45
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    .line 46
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    if-eq v3, v4, :cond_3

    .line 47
    return v1

    .line 49
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    if-eq v3, v4, :cond_4

    .line 50
    return v1

    .line 52
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    if-eq v3, v4, :cond_5

    .line 53
    return v1

    .line 55
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    if-eq v3, v4, :cond_6

    .line 56
    return v1

    .line 58
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    if-eq v3, v4, :cond_7

    .line 59
    return v1

    .line 61
    :cond_7
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    if-eq v3, v4, :cond_8

    .line 62
    return v1

    .line 64
    :cond_8
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    if-eq v3, v4, :cond_9

    .line 65
    return v1

    .line 67
    :cond_9
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 132
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    .line 133
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    .line 134
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    .line 135
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    .line 136
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    .line 137
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    .line 138
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    .line 139
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    const-wide/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 106
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ".cdmaLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .evdoLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .gsmLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .wcdmaLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .tdscdmaLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .lteLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .nrLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalLevel;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 166
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 167
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 169
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 171
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 173
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 142
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 143
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    return-void
.end method
