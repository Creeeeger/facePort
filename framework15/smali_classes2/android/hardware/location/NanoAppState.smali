.class public final Landroid/hardware/location/NanoAppState;
.super Ljava/lang/Object;
.source "NanoAppState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIsEnabled:Z

.field private greylist-max-o mNanoAppId:J

.field private blacklist mNanoAppPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNanoAppRpcServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNanoAppVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoAppState$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppState$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return-void
.end method

.method public constructor whitelist <init>(JIZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor whitelist <init>(JIZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    const-class v0, Landroid/hardware/location/NanoAppRpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/location/NanoAppRpcService;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/NanoAppRpcService;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist getNanoAppPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNanoAppVersion()J
    .locals 2

    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getRpcServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppRpcServiceList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/hardware/location/NanoAppRpcService;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/NanoAppRpcService;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
