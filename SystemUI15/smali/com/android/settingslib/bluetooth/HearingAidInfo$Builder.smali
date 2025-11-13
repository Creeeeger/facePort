.class public final Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHiSyncId:J

.field public mMode:I

.field public mSide:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    iput v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/settingslib/bluetooth/HearingAidInfo;
    .locals 7

    new-instance v6, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    iget v2, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    iget-wide v4, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIIJ)V

    return-object v6
.end method

.method public final setLeAudioLocation(I)V
    .locals 4

    sget-object v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    const v0, 0x5451451

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0xa8a28a2

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    iput v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    return-void
.end method
