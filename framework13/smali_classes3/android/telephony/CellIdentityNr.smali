.class public final Landroid/telephony/CellIdentityNr;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityNr.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_NCI:J = 0xfffffffffL

.field private static final blacklist MAX_NRARFCN:I = 0x32093d

.field private static final blacklist MAX_PCI:I = 0x3ef

.field private static final blacklist MAX_TAC:I = 0xffffff

.field private static final blacklist TAG:Ljava/lang/String; = "CellIdentityNr"


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

.field private final blacklist mNci:J

.field private final blacklist mNrArfcn:I

.field private final blacklist mPci:I

.field private final blacklist mTac:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Landroid/telephony/CellIdentityNr$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 7

    .line 57
    const-string v1, "CellIdentityNr"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    .line 59
    iput v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    .line 60
    iput v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    .line 61
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 14
    .param p1, "pci"    # I
    .param p2, "tac"    # I
    .param p3, "nrArfcn"    # I
    .param p4, "bands"    # [I
    .param p5, "mccStr"    # Ljava/lang/String;
    .param p6, "mncStr"    # Ljava/lang/String;
    .param p7, "nci"    # J
    .param p9, "alphal"    # Ljava/lang/String;
    .param p10, "alphas"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p11, "additionalPlmns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v7, p0

    const-string v1, "CellIdentityNr"

    const/4 v2, 0x6

    move-object v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    const/16 v1, 0x3ef

    move v2, p1

    invoke-static {p1, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityNr;->mPci:I

    .line 87
    const v1, 0xffffff

    move/from16 v3, p2

    invoke-static {v3, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityNr;->mTac:I

    .line 88
    const v1, 0x32093d

    move/from16 v4, p3

    invoke-static {v4, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, v7, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    .line 90
    move-object/from16 v0, p4

    iput-object v0, v7, Landroid/telephony/CellIdentityNr;->mBands:[I

    .line 91
    const-wide/16 v10, 0x0

    const-wide v12, 0xfffffffffL

    move-wide/from16 v8, p7

    invoke-static/range {v8 .. v13}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(JJJ)J

    move-result-wide v5

    iput-wide v5, v7, Landroid/telephony/CellIdentityNr;->mNci:J

    .line 92
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v7, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 93
    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    .local v5, "plmn":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/CellIdentityNr;->isValidPlmn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, v7, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v5    # "plmn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->updateGlobalCellId()V

    .line 99
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 282
    const-string v0, "CellIdentityNr"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 290
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->updateGlobalCellId()V

    .line 291
    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 311
    new-instance v0, Landroid/telephony/CellIdentityNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityNr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asCellLocation()Landroid/telephony/CellLocation;
    .locals 4

    .line 127
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 128
    .local v0, "cl":Landroid/telephony/gsm/GsmCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 129
    .local v1, "tac":I
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 131
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 143
    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityNr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 147
    return v2

    .line 150
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityNr;

    .line 151
    .local v1, "o":Landroid/telephony/CellIdentityNr;
    invoke-super {p0, v1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mPci:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mTac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mBands:[I

    .line 152
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    iget-wide v5, v1, Landroid/telephony/CellIdentityNr;->mNci:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 153
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 151
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

    .line 238
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBands()[I
    .locals 2

    .line 190
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNumber()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    return v0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNci()J
    .locals 2

    .line 163
    iget-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    return-wide v0
.end method

.method public whitelist getNrarfcn()I
    .locals 1

    .line 176
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    return v0
.end method

.method public whitelist getPci()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    return v0
.end method

.method public whitelist getTac()I
    .locals 1

    .line 208
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 136
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 136
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .locals 3
    .param p1, "ci"    # Landroid/telephony/CellIdentity;

    .line 317
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v0

    .line 319
    .local v0, "result":Z
    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_0

    .line 320
    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 323
    :cond_0
    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .locals 1

    .line 38
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;
    .locals 13

    .line 104
    new-instance v12, Landroid/telephony/CellIdentityNr;

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    iget-object v4, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    iget-object v5, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityNr;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/CellIdentityNr;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const-wide v7, 0x7fffffffffffffffL

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v12
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityNr:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    const-string v1, " mPci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string v1, " mTac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    const-string v1, " mNrArfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string v1, " mBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string v1, " mMcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string v1, " mMnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, " mNci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, " mAlphaLong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, " mAlphaShort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string v1, " mAdditionalPlmns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .locals 6

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getPlmn()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-wide v1, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return-void

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%09x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .line 271
    const/4 v0, 0x6

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 276
    iget-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 278
    return-void
.end method
