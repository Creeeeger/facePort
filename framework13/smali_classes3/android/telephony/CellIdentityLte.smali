.class public final Landroid/telephony/CellIdentityLte;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityLte.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_BANDWIDTH:I = 0x4e20

.field private static final blacklist MAX_CI:I = 0xfffffff

.field private static final blacklist MAX_EARFCN:I = 0x3ffff

.field private static final blacklist MAX_PCI:I = 0x1f7

.field private static final blacklist MAX_TAC:I = 0xffff

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

.field private final blacklist mBands:[I

.field private final greylist-max-o mBandwidth:I

.field private final greylist-max-o mCi:I

.field private blacklist mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

.field private final blacklist mEarfcn:I

.field private final greylist-max-o mPci:I

.field private final greylist-max-o mTac:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    const-class v0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    .line 397
    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 7

    .line 72
    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 74
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 75
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 76
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 77
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 78
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 81
    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor greylist-max-p <init>(IIIII)V
    .locals 14
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "ci"    # I
    .param p4, "pci"    # I
    .param p5, "tac"    # I

    .line 96
    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 96
    const v5, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v1 .. v13}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V
    .locals 10
    .param p1, "ci"    # I
    .param p2, "pci"    # I
    .param p3, "tac"    # I
    .param p4, "earfcn"    # I
    .param p5, "bands"    # [I
    .param p6, "bandwidth"    # I
    .param p7, "mccStr"    # Ljava/lang/String;
    .param p8, "mncStr"    # Ljava/lang/String;
    .param p9, "alphal"    # Ljava/lang/String;
    .param p10, "alphas"    # Ljava/lang/String;
    .param p12, "csgInfo"    # Landroid/telephony/ClosedSubscriberGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ")V"
        }
    .end annotation

    .line 122
    .local p11, "additionalPlmns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v7, p0

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    move-object v0, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    const v1, 0xfffffff

    move v2, p1

    invoke-static {p1, v0, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 124
    const/16 v1, 0x1f7

    move v3, p2

    invoke-static {p2, v0, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 125
    const v1, 0xffff

    move v4, p3

    invoke-static {p3, v0, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 126
    const v1, 0x3ffff

    move v5, p4

    invoke-static {p4, v0, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 127
    move-object v1, p5

    iput-object v1, v7, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 128
    const/16 v6, 0x4e20

    move/from16 v8, p6

    invoke-static {v8, v0, v6}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, v7, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v7, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 130
    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 131
    .local v6, "plmn":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/CellIdentityLte;->isValidPlmn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    iget-object v9, v7, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    move-object/from16 v0, p12

    iput-object v0, v7, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 136
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    .line 137
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 381
    sget-object v0, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 389
    const-class v1, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 391
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    .line 393
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityLte;)V
    .locals 13
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .line 140
    iget v1, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v2, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v3, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, p1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget-object v5, p1, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget v6, p1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget-object v7, p1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p1, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v12, p1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 142
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 413
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .locals 5

    .line 301
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 302
    .local v0, "cl":Landroid/telephony/gsm/GsmCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 303
    .local v1, "tac":I
    :goto_0
    iget v4, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    if-eq v4, v3, :cond_1

    move v2, v4

    .line 304
    .local v2, "cid":I
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 305
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 306
    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityLte;
    .locals 1

    .line 153
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 318
    return v0

    .line 321
    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityLte;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 322
    return v2

    .line 325
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    .line 326
    .local v1, "o":Landroid/telephony/CellIdentityLte;
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mPci:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mTac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 330
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    .line 332
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    .line 333
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 334
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 335
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 326
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

    .line 275
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBands()[I
    .locals 2

    .line 229
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBandwidth()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    return v0
.end method

.method public greylist-max-o getChannelNumber()I
    .locals 1

    .line 267
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return v0
.end method

.method public whitelist getCi()I
    .locals 1

    .line 193
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    return v0
.end method

.method public whitelist getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 1

    .line 283
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object v0
.end method

.method public whitelist getEarfcn()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return v0
.end method

.method public whitelist getMcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

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

    .line 245
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

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

    .line 253
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .locals 2

    .line 261
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

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

.method public whitelist getPci()I
    .locals 1

    .line 201
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    return v0
.end method

.method public whitelist getTac()I
    .locals 1

    .line 209
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 311
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 311
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .locals 3
    .param p1, "ci"    # Landroid/telephony/CellIdentity;

    .line 419
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v0

    .line 421
    .local v0, "result":Z
    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_0

    .line 422
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 425
    :cond_0
    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;
    .locals 14

    .line 147
    new-instance v13, Landroid/telephony/CellIdentityLte;

    iget-object v5, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v7, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v6, 0x7fffffff

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v13
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v1, ":{ mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string v1, " mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const-string v1, " mEarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    const-string v1, " mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    const-string v1, " mBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    const-string v1, " mCsgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .locals 5

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPlmn()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    return-void

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%07x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 368
    const/4 v0, 0x3

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 369
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 374
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 376
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 377
    return-void
.end method
