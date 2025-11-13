.class public final Landroid/telephony/satellite/SystemSelectionSpecifier;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBands:Landroid/util/IntArray;

.field private blacklist mEarfcs:Landroid/util/IntArray;

.field private blacklist mMccMnc:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SystemSelectionSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SystemSelectionSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SystemSelectionSpecifier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    iput-object p3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SystemSelectionSpecifier;

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getBands()Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    return-object v0
.end method

.method public blacklist getEarfcs()Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    return-object v0
.end method

.method public blacklist getMccMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mccmnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bands:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const-string/jumbo v2, "none,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "earfcs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcs:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return-void
.end method
