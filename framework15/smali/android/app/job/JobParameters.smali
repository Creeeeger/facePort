.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$StopReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERNAL_STOP_REASON_ANR:I = 0xc

.field public static final blacklist INTERNAL_STOP_REASON_CANCELED:I = 0x0

.field public static final blacklist INTERNAL_STOP_REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final blacklist INTERNAL_STOP_REASON_DATA_CLEARED:I = 0x8

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_IDLE:I = 0x4

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_THERMAL:I = 0x5

.field public static final blacklist INTERNAL_STOP_REASON_OLAF:I = 0xd

.field public static final blacklist INTERNAL_STOP_REASON_PREEMPT:I = 0x2

.field public static final blacklist INTERNAL_STOP_REASON_RESTRICTED_BUCKET:I = 0x6

.field public static final blacklist INTERNAL_STOP_REASON_RTC_UPDATED:I = 0x9

.field public static final blacklist INTERNAL_STOP_REASON_SUCCESSFUL_FINISH:I = 0xa

.field public static final blacklist INTERNAL_STOP_REASON_TIMEOUT:I = 0x3

.field public static final blacklist INTERNAL_STOP_REASON_UNINSTALL:I = 0x7

.field public static final blacklist INTERNAL_STOP_REASON_UNKNOWN:I = -0x1

.field public static final blacklist INTERNAL_STOP_REASON_USER_UI_STOP:I = 0xb

.field public static final blacklist JOB_STOP_REASON_CODES:[I

.field public static final whitelist STOP_REASON_APP_STANDBY:I = 0xc

.field public static final whitelist STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final whitelist STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final whitelist STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final whitelist STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final whitelist STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final whitelist STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final whitelist STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final whitelist STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final whitelist STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED:I = 0xf

.field public static final whitelist STOP_REASON_PREEMPT:I = 0x2

.field public static final whitelist STOP_REASON_QUOTA:I = 0xa

.field public static final whitelist STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final whitelist STOP_REASON_TIMEOUT:I = 0x3

.field public static final whitelist STOP_REASON_UNDEFINED:I = 0x0

.field public static final whitelist STOP_REASON_USER:I = 0xd


# instance fields
.field private final greylist callback:Landroid/os/IBinder;

.field private final greylist-max-o clipData:Landroid/content/ClipData;

.field private final greylist-max-o clipGrantFlags:I

.field private greylist-max-o debugStopReason:Ljava/lang/String;

.field private final greylist-max-o extras:Landroid/os/PersistableBundle;

.field private final greylist jobId:I

.field private blacklist mInternalStopReason:I

.field private final blacklist mIsExpedited:Z

.field private final blacklist mIsUserInitiated:Z

.field private final blacklist mJobNamespace:Ljava/lang/String;

.field private blacklist mNetwork:Landroid/net/Network;

.field private blacklist mStopReason:I

.field private final greylist-max-o mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final greylist-max-o mTriggeredContentUris:[Landroid/net/Uri;

.field private final greylist-max-o overrideDeadlineExpired:Z

.field private final greylist-max-o transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    iput p3, p0, Landroid/app/job/JobParameters;->jobId:I

    iput-object p4, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    iput-object p5, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput p7, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    iput-boolean p8, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    iput-boolean p9, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    iput-boolean p10, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    iput-object p11, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    iput-object p12, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    iput-object p13, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    iput-object p2, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getInternalReasonCodeDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "olaf"

    return-object v0

    :pswitch_1
    const-string v0, "anr"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "user_ui_stop"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "successful_finish"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "rtc_updated"

    return-object v0

    :pswitch_5
    const-string v0, "data_cleared"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "uninstall"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "thermal"

    return-object v0

    :pswitch_9
    const-string v0, "device_idle"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "timeout"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "preempt"

    return-object v0

    :pswitch_c
    const-string v0, "constraints"

    return-object v0

    :pswitch_d
    const-string v0, "canceled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getJobStopReasonCodes()[I
    .locals 1

    sget-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    return-object v0
.end method


# virtual methods
.method public whitelist completeWork(Landroid/app/job/JobWorkItem;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given work is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dequeueWork()Landroid/app/job/JobWorkItem;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getDebugStopReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getInternalStopReasonCode()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    return v0
.end method

.method public whitelist getJobId()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public whitelist getJobNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getStopReason()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    return v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isExpeditedJob()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    return v0
.end method

.method public whitelist isOverrideDeadlineExpired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public whitelist isUserInitiatedJob()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    return v0
.end method

.method public blacklist setNetwork(Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public blacklist setStopReason(IILjava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/app/job/JobParameters;->mStopReason:I

    iput p2, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    iput-object p3, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1, p2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
