.class public Landroid/view/RemoteAnimationAdapter;
.super Ljava/lang/Object;
.source "RemoteAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallingApplication:Landroid/app/IApplicationThread;

.field private greylist-max-o mCallingPid:I

.field private blacklist mCallingUid:I

.field private final blacklist mChangeNeedsSnapshot:Z

.field private final greylist-max-o mDuration:J

.field private final greylist-max-o mRunner:Landroid/view/IRemoteAnimationRunner;

.field private final greylist-max-o mStatusBarTransitionDelay:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/RemoteAnimationAdapter$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRemoteAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    return-void
.end method

.method public constructor greylist <init>(Landroid/view/IRemoteAnimationRunner;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    iput-object p6, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/view/IRemoteAnimationRunner;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    iput-wide p2, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    iput-boolean p6, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    iput-wide p4, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingApplication()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public greylist-max-o getCallingPid()I
    .locals 1

    iget v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    return v0
.end method

.method public blacklist getCallingUid()I
    .locals 1

    iget v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingUid:I

    return v0
.end method

.method public blacklist getChangeNeedsSnapshot()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    return v0
.end method

.method public greylist-max-o getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    return-wide v0
.end method

.method public greylist-max-o getRunner()Landroid/view/IRemoteAnimationRunner;
    .locals 1

    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    return-object v0
.end method

.method public greylist-max-o getStatusBarTransitionDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    return-wide v0
.end method

.method public blacklist setCallingPidUid(II)V
    .locals 0

    iput p1, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    iput p2, p0, Landroid/view/RemoteAnimationAdapter;->mCallingUid:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
