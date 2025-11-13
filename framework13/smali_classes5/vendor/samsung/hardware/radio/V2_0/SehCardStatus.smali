.class public final Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
.super Ljava/lang/Object;
.source "SehCardStatus.java"


# instance fields
.field public blacklist applications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist atr:Ljava/lang/String;

.field public blacklist cardState:I

.field public blacklist cdmaSubscriptionAppIndex:I

.field public blacklist gsmUmtsSubscriptionAppIndex:I

.field public blacklist iccid:Ljava/lang/String;

.field public blacklist imsSubscriptionAppIndex:I

.field public blacklist physicalSlotId:I

.field public blacklist universalPinState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    .line 12
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    .line 17
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 22
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 27
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    .line 35
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

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
            "Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 145
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 146
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 147
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 146
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 150
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 152
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;-><init>()V

    .line 153
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    mul-int/lit8 v6, v4, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 154
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
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
            "Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 208
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 212
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 213
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 218
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 219
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    if-eq v2, v3, :cond_2

    .line 62
    return v1

    .line 64
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    .line 65
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    if-eq v3, v4, :cond_3

    .line 66
    return v1

    .line 68
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    if-eq v3, v4, :cond_4

    .line 69
    return v1

    .line 71
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    if-eq v3, v4, :cond_5

    .line 72
    return v1

    .line 74
    :cond_5
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    if-eq v3, v4, :cond_6

    .line 75
    return v1

    .line 77
    :cond_6
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    if-eq v3, v4, :cond_7

    .line 78
    return v1

    .line 80
    :cond_7
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 81
    return v1

    .line 83
    :cond_8
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    if-eq v3, v4, :cond_9

    .line 84
    return v1

    .line 86
    :cond_9
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 87
    return v1

    .line 89
    :cond_a
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 90
    return v1

    .line 92
    :cond_b
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 97
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    .line 103
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    .line 106
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    .line 164
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    .line 165
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 166
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 167
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 169
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 170
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x58

    int-to-long v9, v5

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v5, p3, v6

    add-long v13, v5, v2

    .line 170
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 174
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 176
    new-instance v7, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    invoke-direct {v7}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;-><init>()V

    .line 177
    .local v7, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
    mul-int/lit8 v8, v6, 0x58

    int-to-long v8, v8

    move-object/from16 v15, p1

    invoke-virtual {v7, v15, v5, v8, v9}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 178
    iget-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v7    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v15, p1

    .line 181
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_index_0":I
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    .line 182
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    .line 184
    nop

    .line 185
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v11, v6

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long/2addr v4, v2

    const/16 v17, 0x0

    .line 184
    move-object/from16 v10, p1

    move-wide v15, v4

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 189
    const-wide/16 v4, 0x40

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    .line 191
    nop

    .line 192
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v11, v6

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    .line 191
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 196
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 136
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 137
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ".cardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CardState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .universalPinState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/PinState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .gsmUmtsSubscriptionAppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .cdmaSubscriptionAppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", .imsSubscriptionAppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", .applications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", .physicalSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", .atr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", .iccid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 223
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 225
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 226
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iget v8, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 229
    iget-object v6, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 230
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v2

    invoke-virtual {p1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    add-long v2, p2, v7

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v6, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 233
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 234
    iget-object v4, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v9, v5

    invoke-virtual {v4, v2, v9, v10}, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v7, p2

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 238
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 240
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 241
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 199
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 200
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 202
    return-void
.end method
