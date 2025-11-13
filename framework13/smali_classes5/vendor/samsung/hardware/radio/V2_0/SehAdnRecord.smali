.class public final Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
.super Ljava/lang/Object;
.source "SehAdnRecord.java"


# instance fields
.field public blacklist anr:Ljava/lang/String;

.field public blacklist anrA:Ljava/lang/String;

.field public blacklist anrB:Ljava/lang/String;

.field public blacklist anrC:Ljava/lang/String;

.field public blacklist gsm8bitEmail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gsm8bitEmailLength:I

.field public blacklist name:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist nameDcs:I

.field public blacklist nameLength:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist sne:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sneDcs:I

.field public blacklist sneLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    .line 16
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    .line 20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    .line 28
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    .line 32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    .line 52
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    .line 56
    iput v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

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
            "Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 174
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 175
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x98

    int-to-long v5, v3

    .line 176
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 175
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 179
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 181
    new-instance v5, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v5}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    .line 182
    .local v5, "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    mul-int/lit16 v6, v4, 0x98

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 183
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v5    # "_hidl_vec_element":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
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
            "Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 283
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 285
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 286
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x98

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 287
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 288
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    mul-int/lit16 v5, v3, 0x98

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 293
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 294
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 64
    return v1

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    if-eq v2, v3, :cond_2

    .line 67
    return v1

    .line 69
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    .line 70
    .local v2, "other":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 71
    return v1

    .line 73
    :cond_3
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    if-eq v3, v4, :cond_4

    .line 74
    return v1

    .line 76
    :cond_4
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    if-eq v3, v4, :cond_5

    .line 77
    return v1

    .line 79
    :cond_5
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 80
    return v1

    .line 82
    :cond_6
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 83
    return v1

    .line 85
    :cond_7
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    if-eq v3, v4, :cond_8

    .line 86
    return v1

    .line 88
    :cond_8
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 89
    return v1

    .line 91
    :cond_9
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 92
    return v1

    .line 94
    :cond_a
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 95
    return v1

    .line 97
    :cond_b
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 98
    return v1

    .line 100
    :cond_c
    iget-object v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 101
    return v1

    .line 103
    :cond_d
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    if-eq v3, v4, :cond_e

    .line 104
    return v1

    .line 106
    :cond_e
    iget v3, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    iget v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    if-eq v3, v4, :cond_f

    .line 107
    return v1

    .line 109
    :cond_f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 114
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    .line 115
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    .line 118
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    .line 119
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 122
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 123
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    .line 125
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 114
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 194
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, p3, v2

    add-long/2addr v13, v2

    .line 194
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 198
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 199
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 200
    const/4 v9, 0x0

    .line 201
    .local v9, "_hidl_vec_element":B
    mul-int/lit8 v10, v8, 0x1

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v9

    .line 202
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v9    # "_hidl_vec_element":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 205
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    .line 206
    const-wide/16 v4, 0x14

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    .line 207
    const-wide/16 v4, 0x18

    add-long v8, p3, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    .line 209
    nop

    .line 210
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    const/16 v16, 0x0

    .line 209
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 215
    const-wide/16 v4, 0x28

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 216
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v4, p3, v4

    add-long v15, v4, v2

    const/16 v17, 0x1

    .line 216
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 220
    .local v4, "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 221
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 222
    const/4 v9, 0x0

    .line 223
    .restart local v9    # "_hidl_vec_element":B
    mul-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v9

    .line 224
    iget-object v10, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v9    # "_hidl_vec_element":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    .line 228
    const-wide/16 v4, 0x40

    add-long v8, p3, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    .line 230
    nop

    .line 231
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    const/16 v16, 0x0

    .line 230
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 235
    const-wide/16 v4, 0x50

    add-long v8, p3, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 237
    nop

    .line 238
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 237
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 242
    const-wide/16 v4, 0x60

    add-long v8, p3, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 244
    nop

    .line 245
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 244
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 249
    const-wide/16 v4, 0x70

    add-long v8, p3, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    .line 251
    nop

    .line 252
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 251
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 257
    const-wide/16 v4, 0x80

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 258
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    const/4 v15, 0x1

    .line 258
    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 262
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_2
    if-ge v3, v6, :cond_2

    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "_hidl_vec_element":B
    mul-int/lit8 v5, v3, 0x1

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    .line 266
    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v4    # "_hidl_vec_element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 269
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v2, 0x90

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    .line 270
    const-wide/16 v2, 0x94

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    .line 271
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 165
    const-wide/16 v0, 0x98

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 166
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 167
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .nameDcs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .nameLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .gsm8bitEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", .gsm8bitEmailLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", .anr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", .anrA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", .anrB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", .anrC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", .sne = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", .sneLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", .sneDcs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 302
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 304
    mul-int/lit8 v12, v6, 0x1

    int-to-long v12, v12

    iget-object v14, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 306
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v12, p2, v3

    add-long/2addr v12, v3

    invoke-virtual {v1, v12, v13, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 308
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x10

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 309
    const-wide/16 v5, 0x14

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 310
    const-wide/16 v5, 0x18

    add-long v5, p2, v5

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 312
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 313
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x28

    add-long v12, p2, v5

    add-long/2addr v12, v7

    invoke-virtual {v1, v12, v13, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    add-long v12, p2, v5

    add-long/2addr v12, v9

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 315
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v2, 0x1

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 316
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_1
    if-ge v13, v2, :cond_1

    .line 317
    mul-int/lit8 v14, v13, 0x1

    int-to-long v14, v14

    iget-object v11, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v12, v14, v15, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 316
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 319
    .end local v13    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 321
    .end local v2    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x38

    add-long v5, p2, v5

    iget v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    const-wide/16 v5, 0x40

    add-long v5, p2, v5

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 323
    const-wide/16 v5, 0x50

    add-long v5, p2, v5

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 324
    const-wide/16 v5, 0x60

    add-long v5, p2, v5

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 325
    const-wide/16 v5, 0x70

    add-long v5, p2, v5

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 327
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 328
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x80

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 329
    add-long v7, p2, v5

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 330
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 331
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2
    if-ge v8, v2, :cond_2

    .line 332
    mul-int/lit8 v9, v8, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 334
    .end local v8    # "_hidl_index_0":I
    :cond_2
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 336
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x90

    add-long v2, p2, v2

    iget v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 337
    const-wide/16 v2, 0x94

    add-long v2, p2, v2

    iget v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 338
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 274
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x98

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 275
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 277
    return-void
.end method
