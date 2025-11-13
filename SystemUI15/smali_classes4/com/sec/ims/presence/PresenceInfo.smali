.class public Lcom/sec/ims/presence/PresenceInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bPublishGzip:Z

.field private contactId:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private expire_time:J

.field private id:J

.field private isFetchSuccess:Z

.field private mDeviceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private min_expires:J

.field private phoneId:I

.field private pidf:Ljava/lang/String;

.field private subscriptionId:Ljava/lang/String;

.field private tel_uri:Ljava/lang/String;

.field private timestamp:J

.field private uri:Ljava/lang/String;

.field private useExtendedTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/presence/PresenceInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/PresenceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    iget-object p1, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    iput p2, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/sec/ims/presence/DeviceTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDevice(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addPerson(Lcom/sec/ims/presence/PersonTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPerson(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addService(Lcom/sec/ims/presence/ServiceTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addService(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearDevice()V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearPerson()V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearService()V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    return-object p0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    return-wide v0
.end method

.method public getExtendedTimerFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    return p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    return-wide v0
.end method

.method public getMinExpires()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    return-wide v0
.end method

.method public getPersonList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    return p0
.end method

.method public getPidf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishGzipEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    return p0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    return-object p0
.end method

.method public getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;
    .locals 2

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    iget-object v1, v0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-object p0
.end method

.method public getTelUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public isFetchSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return p0
.end method

.method public removeService(Lcom/sec/ims/presence/ServiceTuple;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/ServiceTuple;

    iget-object v1, v1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    return-void
.end method

.method public setExtendedTimerFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    return-void
.end method

.method public setFetchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    return-void
.end method

.method public setMinExpires(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    return-void
.end method

.method public setPidf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    return-void
.end method

.method public setPublishGzipEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-void
.end method

.method public setTelUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PresenceInfo: id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tel_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFetchSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expire_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", min_expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bPublishGzip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void
.end method
