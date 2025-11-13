.class public final Lcom/android/settingslib/bluetooth/HearingAidInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

.field public static final ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

.field public static final HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;


# instance fields
.field public final mHiSyncId:J

.field public final mMode:I

.field public final mSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    iput p2, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    iput-wide p3, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    iget v1, p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    iget v3, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    iget v3, p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    iget-wide p0, p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HearingAidInfo{mSide="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mSide:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHiSyncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
