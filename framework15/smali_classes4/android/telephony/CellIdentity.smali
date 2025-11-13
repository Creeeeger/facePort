.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o INVALID_CHANNEL_NUMBER:I = 0x7fffffff

.field public static final blacklist MCC_LENGTH:I = 0x3

.field public static final blacklist MNC_MAX_LENGTH:I = 0x3

.field public static final blacklist MNC_MIN_LENGTH:I = 0x2


# instance fields
.field protected greylist-max-o mAlphaLong:Ljava/lang/String;

.field protected greylist-max-o mAlphaShort:Ljava/lang/String;

.field protected blacklist mGlobalCellId:Ljava/lang/String;

.field protected final greylist-max-o mMccStr:Ljava/lang/String;

.field protected final greylist-max-o mMncStr:Ljava/lang/String;

.field protected final greylist-max-o mTag:Ljava/lang/String;

.field protected final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/CellIdentity;->mType:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-static {p3}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid MCC format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iput-object p3, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    :goto_2
    if-eqz p4, :cond_7

    invoke-static {p4}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid MNC format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_3
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    goto :goto_5

    :cond_7
    :goto_4
    iput-object p4, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_9
    nop

    const-string v0, "e257ae06-ac0a-44c0-ba63-823b9f07b3e4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "CellIdentity Missing Half of PLMN ID"

    invoke-static {v0, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_a
    iput-object p5, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-void
.end method

.method protected static final blacklist inRangeOrUnavailable(III)I
    .locals 1

    if-lt p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final blacklist inRangeOrUnavailable(IIII)I
    .locals 1

    if-lt p0, p1, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    if-eq p0, p3, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    return p0
.end method

.method protected static final blacklist inRangeOrUnavailable(JJJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-wide p0

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private static blacklist isMcc(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isMnc(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-le v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public static blacklist isValidPlmn(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public abstract whitelist asCellLocation()Landroid/telephony/CellLocation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentity;

    iget v2, p0, Landroid/telephony/CellIdentity;->mType:I

    iget v3, v0, Landroid/telephony/CellIdentity;->mType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public greylist-max-o getChannelNumber()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getGlobalCellId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mGlobalCellId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMccString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMncString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/CellIdentity;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-void
.end method

.method public blacklist setOperatorAlphaShort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-void
.end method

.method protected abstract blacklist updateGlobalCellId()V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
