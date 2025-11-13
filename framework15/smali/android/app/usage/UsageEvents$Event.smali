.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;,
        Landroid/app/usage/UsageEvents$Event$EventFlags;,
        Landroid/app/usage/UsageEvents$Event$EventType;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_DESTROYED:I = 0x18

.field public static final whitelist ACTIVITY_PAUSED:I = 0x2

.field public static final whitelist ACTIVITY_RESUMED:I = 0x1

.field public static final whitelist ACTIVITY_STOPPED:I = 0x17

.field public static final blacklist APP_COMPONENT_USED:I = 0x1f

.field public static final greylist-max-o CHOOSER_ACTION:I = 0x9

.field public static final whitelist CONFIGURATION_CHANGE:I = 0x5

.field public static final greylist-max-o CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final blacklist CONTINUING_FOREGROUND_SERVICE:I = 0x15

.field public static final blacklist DEVICE_EVENT_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final whitelist DEVICE_SHUTDOWN:I = 0x1a

.field public static final whitelist DEVICE_STARTUP:I = 0x1b

.field public static final greylist-max-o END_OF_DAY:I = 0x3

.field public static final greylist-max-o FLAG_IS_PACKAGE_INSTANT_APP:I = 0x1

.field public static final blacklist FLUSH_TO_DISK:I = 0x19

.field public static final whitelist FOREGROUND_SERVICE_START:I = 0x13

.field public static final whitelist FOREGROUND_SERVICE_STOP:I = 0x14

.field public static final whitelist KEYGUARD_HIDDEN:I = 0x12

.field public static final whitelist KEYGUARD_SHOWN:I = 0x11

.field public static final blacklist LOCUS_ID_SET:I = 0x1e

.field public static final blacklist MAX_EVENT_TYPE:I = 0x1f

.field public static final whitelist MOVE_TO_BACKGROUND:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOVE_TO_FOREGROUND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist NOTIFICATION_INTERRUPTION:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NOTIFICATION_SEEN:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ROLLOVER_FOREGROUND_SERVICE:I = 0x16

.field public static final whitelist SCREEN_INTERACTIVE:I = 0xf

.field public static final whitelist SCREEN_NON_INTERACTIVE:I = 0x10

.field public static final whitelist SHORTCUT_INVOCATION:I = 0x8

.field public static final whitelist SLICE_PINNED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SLICE_PINNED_PRIV:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STANDBY_BUCKET_CHANGED:I = 0xb

.field public static final whitelist SYSTEM_INTERACTION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist UNASSIGNED_TOKEN:I = -0x1

.field public static final whitelist USER_INTERACTION:I = 0x7

.field public static final blacklist USER_STOPPED:I = 0x1d

.field public static final blacklist USER_UNLOCKED:I = 0x1c

.field public static final blacklist VALID_FLAG_BITS:I = 0x1


# instance fields
.field public greylist-max-o mAction:Ljava/lang/String;

.field public greylist-max-o mBucketAndReason:I

.field public greylist-max-p mClass:Ljava/lang/String;

.field public blacklist mClassToken:I

.field public greylist-max-p mConfiguration:Landroid/content/res/Configuration;

.field public greylist-max-o mContentAnnotations:[Ljava/lang/String;

.field public greylist-max-o mContentType:Ljava/lang/String;

.field public greylist-max-p mEventType:I

.field public blacklist mExtras:Landroid/os/PersistableBundle;

.field public greylist-max-o mFlags:I

.field public greylist-max-p mInitTimeStamp:J

.field public blacklist mInstanceId:I

.field public blacklist mLocusId:Ljava/lang/String;

.field public blacklist mLocusIdToken:I

.field public greylist-max-o mNotificationChannelId:Ljava/lang/String;

.field public blacklist mNotificationChannelIdToken:I

.field public greylist-max-p mPackage:Ljava/lang/String;

.field public blacklist mPackageToken:I

.field public greylist-max-o mShortcutId:Ljava/lang/String;

.field public blacklist mShortcutIdToken:I

.field public blacklist mTaskRootClass:Ljava/lang/String;

.field public blacklist mTaskRootClassToken:I

.field public blacklist mTaskRootPackage:Ljava/lang/String;

.field public blacklist mTaskRootPackageToken:I

.field public greylist-max-p mTimeStamp:J

.field public blacklist mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    iput p1, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput-wide p2, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide p2, p0, Landroid/app/usage/UsageEvents$Event;->mInitTimeStamp:J

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/usage/UsageEvents$Event;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method private blacklist copyFrom(Landroid/app/usage/UsageEvents$Event;)V
    .locals 2

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public whitelist getAppStandbyBucket()I
    .locals 2

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist getEventType()I
    .locals 1

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    :goto_0
    return-object v0
.end method

.method public whitelist getInstanceId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    return v0
.end method

.method public blacklist getLocusId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotificationChannelId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v1, "android.instant_class"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    const-string/jumbo v1, "unknown_channel_id"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStandbyReason()I
    .locals 2

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTaskRootClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTaskRootPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist isInstantApp()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
