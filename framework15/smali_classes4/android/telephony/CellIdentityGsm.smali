.class public final Landroid/telephony/CellIdentityGsm;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityGsm.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_ARFCN:I = 0xffff

.field private static final blacklist MAX_BSIC:I = 0x3f

.field private static final blacklist MAX_CID:I = 0xffff

.field private static final blacklist MAX_LAC:I = 0xffff

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdditionalPlmns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArfcn:I

.field private final blacklist mBsic:I

.field private final greylist-max-o mCid:I

.field private final greylist-max-o mLac:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityGsm;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 7

    sget-object v1, Landroid/telephony/CellIdentityGsm;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityGsm;->mGlobalCellId:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    sget-object v1, Landroid/telephony/CellIdentityGsm;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0xffff

    move v2, p1

    invoke-static {p1, v0, v1}, Landroid/telephony/CellIdentityGsm;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, v7, Landroid/telephony/CellIdentityGsm;->mLac:I

    move v3, p2

    invoke-static {p2, v0, v1}, Landroid/telephony/CellIdentityGsm;->inRangeOrUnavailable(III)I

    move-result v4

    iput v4, v7, Landroid/telephony/CellIdentityGsm;->mCid:I

    move v4, p3

    invoke-static {p3, v0, v1}, Landroid/telephony/CellIdentityGsm;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    const/16 v1, 0x3f

    move v5, p4

    invoke-static {p4, v0, v1}, Landroid/telephony/CellIdentityGsm;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, v7, Landroid/telephony/CellIdentityGsm;->mBsic:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v7, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/CellIdentityGsm;->isValidPlmn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v7, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->updateGlobalCellId()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    sget-object v0, Landroid/telephony/CellIdentityGsm;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->updateGlobalCellId()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityGsm;)V
    .locals 10

    iget v1, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v2, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v3, p1, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iget v4, p1, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iget-object v5, p1, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    iget-object v6, p1, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityGsm;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityGsm;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .locals 5

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-eq v4, v3, :cond_1

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    invoke-virtual {v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityGsm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityGsm;

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v4, v1, Landroid/telephony/CellIdentityGsm;->mLac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v4, v1, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iget v4, v1, Landroid/telephony/CellIdentityGsm;->mBsic:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAdditionalPlmns()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getArfcn()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    return v0
.end method

.method public whitelist getBsic()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return v0
.end method

.method public greylist-max-o getChannelNumber()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    return v0
.end method

.method public whitelist getCid()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    return v0
.end method

.method public whitelist getMcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public whitelist getPsc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->sanitizeLocationInfo()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityGsm;
    .locals 11

    new-instance v10, Landroid/telephony/CellIdentityGsm;

    iget-object v5, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityGsm;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityGsm;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v10
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityGsm;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{ mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mArfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBsic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityGsm;->mGlobalCellId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getPlmn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x%04x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityGsm;->mGlobalCellId:Ljava/lang/String;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentityGsm;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method
