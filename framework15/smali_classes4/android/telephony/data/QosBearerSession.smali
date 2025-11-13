.class public final Landroid/telephony/data/QosBearerSession;
.super Ljava/lang/Object;
.source "QosBearerSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist qos:Landroid/telephony/data/Qos;

.field final blacklist qosBearerFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist qosBearerSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/QosBearerSession$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerSession$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    iput-object p2, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    const-class v1, Landroid/telephony/data/QosBearerFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerFilter;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerSession-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerSession;-><init>(Landroid/os/Parcel;)V

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

    instance-of v2, p1, Landroid/telephony/data/QosBearerSession;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/QosBearerSession;

    iget v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    iget v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

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

.method public blacklist getQos()Landroid/telephony/data/Qos;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public blacklist getQosBearerFilterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQosBearerSessionId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    iget-object v2, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

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

    const-string v1, "QosBearerSession { qosBearerSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qosBearerFilterList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

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

    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Landroid/telephony/data/Qos;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/EpsQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/NrQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_0
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
