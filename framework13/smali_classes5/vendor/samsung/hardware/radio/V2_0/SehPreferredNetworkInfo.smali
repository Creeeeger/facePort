.class public final Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
.super Ljava/lang/Object;
.source "SehPreferredNetworkInfo.java"


# instance fields
.field public blacklist gsmAct:I

.field public blacklist gsmCompactAct:I

.field public blacklist index:I

.field public blacklist mode:I

.field public blacklist oper:Ljava/lang/String;

.field public blacklist plmn:Ljava/lang/String;

.field public blacklist utranAct:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    .line 24
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 28
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    .line 32
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

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
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
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
    mul-int/lit8 v3, v2, 0x38

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
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 122
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
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
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 163
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 165
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 166
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 167
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 168
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 173
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 174
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

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    if-eq v2, v3, :cond_2

    .line 43
    return v1

    .line 45
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    .line 46
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    if-eq v3, v4, :cond_3

    .line 47
    return v1

    .line 49
    :cond_3
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 50
    return v1

    .line 52
    :cond_4
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 53
    return v1

    .line 55
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    if-eq v3, v4, :cond_6

    .line 56
    return v1

    .line 58
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    if-eq v3, v4, :cond_7

    .line 59
    return v1

    .line 61
    :cond_7
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    if-eq v3, v4, :cond_8

    .line 62
    return v1

    .line 64
    :cond_8
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

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

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

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
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 132
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 133
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    .line 135
    nop

    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 135
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 140
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 142
    nop

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 142
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 147
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    .line 148
    const-wide/16 v2, 0x2c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 149
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    .line 150
    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    .line 151
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 106
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .oper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .plmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .gsmAct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .gsmCompactAct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .utranAct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 178
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 180
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 181
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 182
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 183
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 184
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 185
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 154
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 155
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 157
    return-void
.end method
