.class public Landroid/os/SemModemActivityInfo;
.super Ljava/lang/Object;
.source "SemModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SemModemActivityInfo$MobileActivity;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TX_POWER_LEVELS:I = 0x5


# instance fields
.field private blacklist mIdleTimeMs:I

.field blacklist mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

.field blacklist mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

.field private blacklist mSleepTimeMs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/os/SemModemActivityInfo$1;

    invoke-direct {v0}, Landroid/os/SemModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/os/SemModemActivityInfo$MobileActivity;Landroid/os/SemModemActivityInfo$MobileActivity;)V
    .locals 5
    .param p1, "sleepTimeMs"    # I
    .param p2, "idleTimeMs"    # I
    .param p3, "nr"    # Landroid/os/SemModemActivityInfo$MobileActivity;
    .param p4, "lc"    # Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 85
    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-direct {v0, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 93
    iput p1, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    .line 95
    iput p2, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    .line 97
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v2

    iget-object v3, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeLength()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v2, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 103
    iget-object v2, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 105
    iget-object v2, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 109
    :cond_0
    if-eqz p4, :cond_1

    .line 111
    invoke-virtual {p4}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v2

    iget-object v3, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v3}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v3

    invoke-virtual {p4}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeLength()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p4}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 115
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p4}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 117
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p4}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 120
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 85
    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-direct {v0, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 190
    invoke-virtual {p0, p1}, Landroid/os/SemModemActivityInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 192
    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 5

    .line 472
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 474
    .local v4, "txVal":I
    if-eqz v4, :cond_0

    .line 476
    return v2

    .line 472
    .end local v4    # "txVal":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 486
    .restart local v4    # "txVal":I
    if-eqz v4, :cond_2

    .line 488
    return v2

    .line 484
    .end local v4    # "txVal":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {p0}, Landroid/os/SemModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/os/SemModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 496
    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 498
    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 494
    :goto_2
    return v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIdleTimeMillis()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    return v0
.end method

.method public blacklist getLcRxBytes()J
    .locals 2

    .line 416
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLcRxTimeMillis()I
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    return v0
.end method

.method public blacklist getLcTxBytes()J
    .locals 2

    .line 394
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLcTxTimeMillis()[I
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNrRxBytes()J
    .locals 2

    .line 328
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getNrRxTimeMillis()I
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    return v0
.end method

.method public blacklist getNrTxBytes()J
    .locals 2

    .line 306
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getNrTxTimeMillis()[I
    .locals 1

    .line 262
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSleepTimeMillis()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    return v0
.end method

.method public blacklist isValid()Z
    .locals 5

    .line 438
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 440
    .local v4, "txVal":I
    if-gez v4, :cond_0

    .line 442
    return v2

    .line 438
    .end local v4    # "txVal":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 452
    .restart local v4    # "txVal":I
    if-gez v4, :cond_2

    .line 454
    return v2

    .line 450
    .end local v4    # "txVal":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {p0}, Landroid/os/SemModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/os/SemModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 462
    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 464
    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxTimeMillis()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getTxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0}, Landroid/os/SemModemActivityInfo$MobileActivity;->getRxBytes()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    invoke-direct {p0}, Landroid/os/SemModemActivityInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 460
    :goto_2
    return v2
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    .line 202
    sget-object v0, Landroid/os/SemModemActivityInfo$MobileActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 204
    sget-object v0, Landroid/os/SemModemActivityInfo$MobileActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    iput-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 206
    return-void
.end method

.method public blacklist setIdleTimeMillis(I)V
    .locals 0
    .param p1, "idleTimeMillis"    # I

    .line 248
    iput p1, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    .line 250
    return-void
.end method

.method public blacklist setLcRxBytes(J)V
    .locals 1
    .param p1, "rxBytes"    # J

    .line 424
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1, p2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 426
    return-void
.end method

.method public blacklist setLcRxTimeMillis(I)V
    .locals 1
    .param p1, "rxTimeMs"    # I

    .line 380
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 382
    return-void
.end method

.method public blacklist setLcTxBytes(J)V
    .locals 1
    .param p1, "txBytes"    # J

    .line 402
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1, p2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 404
    return-void
.end method

.method public blacklist setLcTxTimeMillis([I)V
    .locals 1
    .param p1, "txTimeMs"    # [I

    .line 358
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 360
    return-void
.end method

.method public blacklist setNrRxBytes(J)V
    .locals 1
    .param p1, "rxBytes"    # J

    .line 336
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1, p2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 338
    return-void
.end method

.method public blacklist setNrRxTimeMillis(I)V
    .locals 1
    .param p1, "rxTimeMs"    # I

    .line 292
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 294
    return-void
.end method

.method public blacklist setNrTxBytes(J)V
    .locals 1
    .param p1, "txBytes"    # J

    .line 314
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1, p2}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 316
    return-void
.end method

.method public blacklist setNrTxTimeMillis([I)V
    .locals 1
    .param p1, "txTimeMs"    # [I

    .line 270
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {v0, p1}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 272
    return-void
.end method

.method public blacklist setSleepTimeMillis(I)V
    .locals 0
    .param p1, "sleepTimeMillis"    # I

    .line 226
    iput p1, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    .line 228
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemModemActivityInfo{ SleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 134
    invoke-virtual {v1}, Landroid/os/SemModemActivityInfo$MobileActivity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    .line 136
    invoke-virtual {v1}, Landroid/os/SemModemActivityInfo$MobileActivity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget v0, p0, Landroid/os/SemModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/os/SemModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mNr:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Landroid/os/SemModemActivityInfo;->mLc:Landroid/os/SemModemActivityInfo$MobileActivity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    return-void
.end method
