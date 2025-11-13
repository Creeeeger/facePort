.class public final Landroid/telephony/DataSpecificRegistrationInfo;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataSpecificRegistrationInfo$Builder;,
        Landroid/telephony/DataSpecificRegistrationInfo$LteAttachExtraInfo;,
        Landroid/telephony/DataSpecificRegistrationInfo$LteAttachResultType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_CSFB_NOT_PREFERRED:I = 0x1

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_NONE:I = 0x0

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_SMS_ONLY:I = 0x2

.field public static final whitelist LTE_ATTACH_TYPE_COMBINED:I = 0x2

.field public static final whitelist LTE_ATTACH_TYPE_EPS_ONLY:I = 0x1

.field public static final whitelist LTE_ATTACH_TYPE_UNKNOWN:I


# instance fields
.field public final blacklist isDcNrRestricted:Z

.field public final blacklist isEnDcAvailable:Z

.field public final blacklist isNrAvailable:Z

.field private final blacklist mLteAttachExtraInfo:I

.field private final blacklist mLteAttachResultType:I

.field private final blacklist mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

.field public final blacklist maxDataCalls:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZZZLandroid/telephony/VopsSupportInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput-boolean p2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean p3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean p4, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-object p5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    const-class v0, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmMaxDataCalls(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsDcNrRestricted(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsNrAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsEnDcAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmVopsSupportInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Landroid/telephony/VopsSupportInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmLteAttachResultType(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmLteAttachExtraInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-object v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

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
    instance-of v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/DataSpecificRegistrationInfo;

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget-object v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getLteAttachExtraInfo()I
    .locals 1

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    return v0
.end method

.method public whitelist getLteAttachResultType()I
    .locals 1

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    return v0
.end method

.method public whitelist getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    instance-of v0, v0, Landroid/telephony/LteVopsSupportInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    check-cast v0, Landroid/telephony/LteVopsSupportInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/LteVopsSupportInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public whitelist getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxDataCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDcNrRestricted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNrAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEnDcAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteAttachResultType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteAttachExtraInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
