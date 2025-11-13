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
        Landroid/app/usage/UsageEvents$Event$EventFlags;
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

.field public greylist-max-o mFlags:I

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


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 393
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 412
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 422
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 453
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 495
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 507
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 514
    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timeStamp"    # J

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 393
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 412
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 422
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 453
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 495
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 507
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 518
    iput p1, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 519
    iput-wide p2, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 520
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/usage/UsageEvents$Event;)V
    .locals 1
    .param p1, "orig"    # Landroid/app/usage/UsageEvents$Event;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 393
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 412
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 422
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 453
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 495
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 507
    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 524
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    .line 525
    return-void
.end method

.method private blacklist copyFrom(Landroid/app/usage/UsageEvents$Event;)V
    .locals 2
    .param p1, "orig"    # Landroid/app/usage/UsageEvents$Event;

    .line 690
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 691
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 692
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 693
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 694
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 695
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 696
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 697
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 698
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 699
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 700
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 701
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 702
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 703
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 704
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 705
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 706
    return-void
.end method


# virtual methods
.method public whitelist getAppStandbyBucket()I
    .locals 2

    .line 632
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 613
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 605
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public whitelist getInstanceId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 558
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    return v0
.end method

.method public blacklist getLocusId()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotificationChannelId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 655
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    .line 660
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    return-object p0

    .line 663
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 664
    .local v0, "ret":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 665
    const-string v1, "android.instant_class"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 669
    return-object v0
.end method

.method public blacklist getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    .line 674
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 675
    .local v0, "ret":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v1, "unknown_channel_id"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 676
    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStandbyReason()I
    .locals 2

    .line 644
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTaskRootClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 580
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTaskRootPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 569
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimeStamp()J
    .locals 2

    .line 590
    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist isInstantApp()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 540
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
