.class public final Landroid/telephony/ims/PublishAttributes;
.super Ljava/lang/Object;
.source "PublishAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/PublishAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/PublishAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPublishState:I

.field private blacklist mSipDetails:Landroid/telephony/ims/SipDetails;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPresenceTuples(Landroid/telephony/ims/PublishAttributes;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipDetails(Landroid/telephony/ims/PublishAttributes;Landroid/telephony/ims/SipDetails;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/PublishAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/PublishAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/PublishAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/telephony/ims/PublishAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/PublishAttributes;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    const/4 v1, 0x0

    const-class v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v0, Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDetails;

    iput-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/PublishAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/PublishAttributes;-><init>(Landroid/os/Parcel;)V

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

    check-cast v2, Landroid/telephony/ims/PublishAttributes;

    iget v3, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    iget v4, v2, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object v4, v2, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

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

.method public whitelist getPresenceTuples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPublishState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    return v0
.end method

.method public whitelist getSipDetails()Landroid/telephony/ims/SipDetails;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublishAttributes { publishState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presenceTuples=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]SipDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
