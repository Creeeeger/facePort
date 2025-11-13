.class public final Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
.super Ljava/lang/Object;
.source "CellInfoRatSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/CellInfoRatSpecificInfo$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/CellInfoRatSpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist cdma:I = 0x5

.field public static final blacklist gsm:I = 0x0

.field public static final blacklist lte:I = 0x3

.field public static final blacklist nr:I = 0x4

.field public static final blacklist tdscdma:I = 0x2

.field public static final blacklist wcdma:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    iput-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/CellInfoRatSpecificInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "cdma"

    return-object v0

    :pswitch_1
    const-string v0, "nr"

    return-object v0

    :pswitch_2
    const-string v0, "lte"

    return-object v0

    :pswitch_3
    const-string v0, "tdscdma"

    return-object v0

    :pswitch_4
    const-string v0, "wcdma"

    return-object v0

    :pswitch_5
    const-string v0, "gsm"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist cdma(Landroid/hardware/radio/network/CellInfoCdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public static blacklist gsm(Landroid/hardware/radio/network/CellInfoGsm;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lte(Landroid/hardware/radio/network/CellInfoLte;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist nr(Landroid/hardware/radio/network/CellInfoNr;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tdscdma(Landroid/hardware/radio/network/CellInfoTdscdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist wcdma(Landroid/hardware/radio/network/CellInfoWcdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getCdma()Landroid/hardware/radio/network/CellInfoCdma;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoCdma;

    return-object v0
.end method

.method public blacklist getGsm()Landroid/hardware/radio/network/CellInfoGsm;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoGsm;

    return-object v0
.end method

.method public blacklist getLte()Landroid/hardware/radio/network/CellInfoLte;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoLte;

    return-object v0
.end method

.method public blacklist getNr()Landroid/hardware/radio/network/CellInfoNr;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoNr;

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    return v0
.end method

.method public blacklist getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoTdscdma;

    return-object v0
.end method

.method public blacklist getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoWcdma;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/hardware/radio/network/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoCdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object v1, Landroid/hardware/radio/network/CellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoNr;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    sget-object v1, Landroid/hardware/radio/network/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoLte;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    sget-object v1, Landroid/hardware/radio/network/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoTdscdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    sget-object v1, Landroid/hardware/radio/network/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoWcdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    sget-object v1, Landroid/hardware/radio/network/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoGsm;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setCdma(Landroid/hardware/radio/network/CellInfoCdma;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setGsm(Landroid/hardware/radio/network/CellInfoGsm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setLte(Landroid/hardware/radio/network/CellInfoLte;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setNr(Landroid/hardware/radio/network/CellInfoNr;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setTdscdma(Landroid/hardware/radio/network/CellInfoTdscdma;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setWcdma(Landroid/hardware/radio/network/CellInfoWcdma;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
