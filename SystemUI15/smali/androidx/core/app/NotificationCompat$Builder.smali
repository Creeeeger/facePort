.class public final Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActions:Ljava/util/ArrayList;

.field public final mAllowSystemGeneratedContextualActions:Z

.field public final mBadgeIcon:I

.field public final mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field public final mCategory:Ljava/lang/String;

.field public final mChannelId:Ljava/lang/String;

.field public final mColor:I

.field public final mColorized:Z

.field public final mColorizedSet:Z

.field public final mContentInfo:Ljava/lang/CharSequence;

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public mExtras:Landroid/os/Bundle;

.field public final mFullScreenIntent:Landroid/app/PendingIntent;

.field public final mGroupKey:Ljava/lang/String;

.field public final mGroupSummary:Z

.field public final mInvisibleActions:Ljava/util/ArrayList;

.field public final mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mLocalOnly:Z

.field public final mLocusId:Landroidx/core/content/LocusIdCompat;

.field public final mNotification:Landroid/app/Notification;

.field public final mNumber:I

.field public final mPeople:Ljava/util/ArrayList;

.field public final mPersonList:Ljava/util/ArrayList;

.field public mPriority:I

.field public final mProgress:I

.field public final mProgressIndeterminate:Z

.field public final mProgressMax:I

.field public final mPublicVersion:Landroid/app/Notification;

.field public final mSettingsText:Ljava/lang/CharSequence;

.field public final mShortcutId:Ljava/lang/String;

.field public final mShowWhen:Z

.field public final mSmallIcon:Ljava/lang/Object;

.field public final mSortKey:Ljava/lang/String;

.field public mStyle:Landroidx/core/app/NotificationCompat$Style;

.field public final mSubText:Ljava/lang/CharSequence;

.field public final mTimeout:J

.field public final mUseChronometer:Z

.field public final mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_0

    :catch_0
    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_0
    const-string v8, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_1
    const-string v10, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    goto :goto_1

    :sswitch_2
    const-string v10, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "androidx.core.app.NotificationCompat$CallStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v9, v3

    goto :goto_1

    :sswitch_4
    const-string v10, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    move v9, v5

    goto :goto_1

    :sswitch_5
    const-string v10, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_3

    :pswitch_1
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_3

    :pswitch_2
    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_3

    :pswitch_3
    new-instance v8, Landroidx/core/app/NotificationCompat$CallStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$CallStyle;-><init>()V

    goto :goto_3

    :pswitch_4
    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_3

    :pswitch_5
    new-instance v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v8, "android.selfDisplayName"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "android.messagingStyleUser"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_5

    :cond_9
    const-string v8, "android.picture"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "android.pictureIcon"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_4

    :cond_a
    const-string v8, "android.bigText"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto/16 :goto_6

    :cond_b
    const-string v8, "android.textLines"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto/16 :goto_6

    :cond_c
    const-string v8, "android.callType"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Landroidx/core/app/NotificationCompat$CallStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$CallStyle;-><init>()V

    goto/16 :goto_6

    :cond_d
    const-string v8, "android.template"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    :cond_f
    const-class v9, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_6

    :cond_10
    const-class v9, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_6

    :cond_11
    const-class v9, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_6

    :cond_12
    const-class v9, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_6

    :cond_13
    const-class v9, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_6

    :cond_14
    :goto_4
    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_6

    :cond_15
    :goto_5
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    :goto_6
    if-nez v8, :cond_16

    goto/16 :goto_0

    :cond_16
    :try_start_0
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.infoText"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.subText"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eq v9, v8, :cond_17

    iput-object v8, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v8, :cond_17

    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    iget v9, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_18

    move v9, v5

    goto :goto_8

    :cond_18
    const/4 v9, 0x0

    :goto_8
    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v9

    if-nez v9, :cond_19

    const/4 v14, 0x0

    goto :goto_9

    :cond_19
    new-instance v14, Landroidx/core/content/LocusIdCompat;

    invoke-virtual {v9}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_40

    invoke-direct {v14, v9}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    :goto_9
    iput-object v14, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    iget-wide v14, v1, Landroid/app/Notification;->when:J

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide v14, v9, Landroid/app/Notification;->when:J

    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.showWhen"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.showChronometer"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    iget v9, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x10

    and-int/2addr v9, v15

    if-eqz v9, :cond_1a

    move v9, v5

    goto :goto_a

    :cond_1a
    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v0, v15, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    iget v9, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x8

    and-int/2addr v9, v15

    if-eqz v9, :cond_1b

    move v9, v5

    goto :goto_b

    :cond_1b
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v0, v15, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    iget v9, v1, Landroid/app/Notification;->flags:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_1c

    move v9, v5

    goto :goto_c

    :cond_1c
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v0, v3, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    iget v9, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_1d

    move v9, v5

    goto :goto_d

    :cond_1d
    const/4 v9, 0x0

    :goto_d
    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    iget-object v9, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez v9, :cond_1e

    const/4 v9, 0x0

    goto :goto_e

    :cond_1e
    invoke-static {v9}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    :goto_e
    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v9

    iput v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    iget-object v9, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v9

    if-nez v9, :cond_1f

    const/4 v9, 0x0

    goto :goto_f

    :cond_1f
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v9

    :goto_f
    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget v9, v1, Landroid/app/Notification;->number:I

    iput v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    iget-object v9, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v9, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v9, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v9, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v9, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget v15, v1, Landroid/app/Notification;->flags:I

    const/16 v7, 0x80

    and-int/2addr v15, v7

    if-eqz v15, :cond_20

    move v15, v5

    goto :goto_10

    :cond_20
    const/4 v15, 0x0

    :goto_10
    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v15}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    iget-object v7, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v9, v1, Landroid/app/Notification;->audioStreamType:I

    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v7, v15, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v9, v15, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->createBuilder()Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-static {v7, v2}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->setContentType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-static {v7, v9}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->setLegacyStreamType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->build(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v7

    iput-object v7, v9, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iget-object v7, v1, Landroid/app/Notification;->vibrate:[J

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v7, v9, Landroid/app/Notification;->vibrate:[J

    iget v7, v1, Landroid/app/Notification;->ledARGB:I

    iget v15, v1, Landroid/app/Notification;->ledOnMS:I

    iget v4, v1, Landroid/app/Notification;->ledOffMS:I

    iput v7, v9, Landroid/app/Notification;->ledARGB:I

    iput v15, v9, Landroid/app/Notification;->ledOnMS:I

    iput v4, v9, Landroid/app/Notification;->ledOffMS:I

    if-eqz v15, :cond_21

    if-eqz v4, :cond_21

    move v4, v5

    goto :goto_11

    :cond_21
    const/4 v4, 0x0

    :goto_11
    iget v7, v9, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, -0x2

    or-int/2addr v4, v7

    iput v4, v9, Landroid/app/Notification;->flags:I

    iget v7, v1, Landroid/app/Notification;->defaults:I

    iput v7, v9, Landroid/app/Notification;->defaults:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_22

    or-int/lit8 v2, v4, 0x1

    iput v2, v9, Landroid/app/Notification;->flags:I

    :cond_22
    iget v2, v1, Landroid/app/Notification;->priority:I

    iput v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    iget v2, v1, Landroid/app/Notification;->color:I

    iput v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    iget v2, v1, Landroid/app/Notification;->visibility:I

    iput v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    iget-object v2, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    const-string v3, "android.progressMax"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "android.progress"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v15, "android.progressIndeterminate"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    iput v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    iput-boolean v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    iget v2, v1, Landroid/app/Notification;->icon:I

    iget v4, v1, Landroid/app/Notification;->iconLevel:I

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v2, v9, Landroid/app/Notification;->icon:I

    iput v4, v9, Landroid/app/Notification;->iconLevel:I

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "invisible_actions"

    const-string v9, "android.car.EXTENSIONS"

    const-string v5, "android.people"

    move-object/from16 v16, v6

    const-string v6, "android.people.list"

    const-string v0, "android.colorized"

    move-object/from16 v17, v8

    const-string v8, "android.chronometerCountDown"

    if-nez v2, :cond_23

    move-object v3, v4

    const/4 v2, 0x0

    goto :goto_13

    :cond_23
    new-instance v2, Landroid/os/Bundle;

    move-object/from16 v18, v4

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.CHANNEL_GROUP_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.sortKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.groupKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.isGroupSummary"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.localOnly"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_24

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, v18

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    :cond_24
    move-object/from16 v3, v18

    :goto_12
    if-eqz v17, :cond_25

    move-object/from16 v7, v17

    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    :cond_25
    :goto_13
    move-object v4, v0

    move-object/from16 v0, p0

    if-eqz v2, :cond_27

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v7, :cond_26

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    goto :goto_14

    :cond_26
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_27
    :goto_14
    invoke-static/range {p2 .. p2}, Landroidx/core/app/NotificationCompat$Builder$Api23Impl;->getSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Landroidx/core/app/NotificationCompat$Builder$Api23Impl;->getLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_28

    sget-object v7, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    :cond_28
    iget-object v2, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_30

    array-length v7, v2

    if-eqz v7, :cond_30

    array-length v7, v2

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v7, :cond_30

    aget-object v11, v2, v10

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api23Impl;->getIcon(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;

    move-result-object v12

    if-eqz v12, :cond_2a

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api23Impl;->getIcon(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;

    move-result-object v12

    sget-object v13, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_29

    invoke-virtual {v12}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v13

    if-nez v13, :cond_29

    const/4 v12, 0x0

    goto :goto_16

    :cond_29
    invoke-static {v12}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    :goto_16
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v15, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v14, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v12, v15, v14}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_17

    :cond_2a
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget v12, v11, Landroid/app/Notification$Action;->icon:I

    iget-object v14, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v12, v14, v15}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_17
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api20Impl;->getRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_2e

    array-length v14, v12

    if-eqz v14, :cond_2e

    array-length v14, v12

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v14, :cond_2e

    aget-object v17, v12, v15

    move-object/from16 v18, v2

    new-instance v2, Landroidx/core/app/RemoteInput$Builder;

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v7

    iput-boolean v7, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v20, v12

    if-eqz v7, :cond_2b

    iget-object v12, v2, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2b
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_2c

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v21, v7

    iget-object v7, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v21

    goto :goto_19

    :cond_2c
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v27

    new-instance v7, Landroidx/core/app/RemoteInput;

    iget-object v12, v2, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    move/from16 v17, v14

    iget-object v14, v2, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    move-object/from16 v21, v4

    iget-boolean v4, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    move-object/from16 v30, v8

    iget-object v8, v2, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v31, v6

    iget-object v6, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    iget-object v2, v2, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    move-object/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v24, v12

    move-object/from16 v25, v14

    move/from16 v26, v4

    move-object/from16 v28, v8

    move-object/from16 v29, v6

    invoke-direct/range {v22 .. v29}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    iget-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v2, :cond_2d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    :cond_2d
    iget-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v15, v2

    move/from16 v14, v17

    move-object/from16 v2, v18

    move/from16 v7, v19

    move-object/from16 v12, v20

    move-object/from16 v4, v21

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    goto/16 :goto_18

    :cond_2e
    move-object/from16 v18, v2

    move-object/from16 v21, v4

    move-object/from16 v31, v6

    move/from16 v19, v7

    move-object/from16 v30, v8

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api24Impl;->getAllowGeneratedReplies(Landroid/app/Notification$Action;)Z

    move-result v2

    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api28Impl;->getSemanticAction(Landroid/app/Notification$Action;)I

    move-result v2

    iput v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api29Impl;->isContextual(Landroid/app/Notification$Action;)Z

    move-result v2

    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api31Impl;->isAuthenticationRequired(Landroid/app/Notification$Action;)Z

    move-result v2

    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api20Impl;->getExtras(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v4, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2f
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v10, v2

    move-object/from16 v2, v18

    move/from16 v7, v19

    move-object/from16 v4, v21

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    goto/16 :goto_15

    :cond_30
    move-object/from16 v21, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_32

    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_20

    :cond_32
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_31

    const/4 v4, 0x0

    :goto_1a
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v6

    if-ge v4, v6, :cond_31

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "extras"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_33

    const-string v9, "android.support.allowGeneratedReplies"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move/from16 v39, v8

    goto :goto_1b

    :cond_33
    const/4 v10, 0x0

    move/from16 v39, v10

    :goto_1b
    new-instance v8, Landroidx/core/app/NotificationCompat$Action;

    const-string v9, "icon"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    const-string/jumbo v9, "title"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v34

    const-string v9, "actionIntent"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object/from16 v35, v9

    check-cast v35, Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v36

    const-string v7, "remoteInputs"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    instance-of v11, v9, [Landroid/os/Bundle;

    if-nez v11, :cond_35

    if-nez v9, :cond_34

    goto :goto_1c

    :cond_34
    array-length v11, v9

    const-class v12, [Landroid/os/Bundle;

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1d

    :cond_35
    :goto_1c
    check-cast v9, [Landroid/os/Bundle;

    :goto_1d
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v37

    const-string v7, "dataOnlyRemoteInputs"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    instance-of v11, v9, [Landroid/os/Bundle;

    if-nez v11, :cond_37

    if-nez v9, :cond_36

    goto :goto_1e

    :cond_36
    array-length v11, v9

    const-class v12, [Landroid/os/Bundle;

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1f

    :cond_37
    :goto_1e
    check-cast v9, [Landroid/os/Bundle;

    :goto_1f
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v38

    const-string v7, "semanticAction"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    const-string v7, "showsUserInterface"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v32, v8

    invoke-direct/range {v32 .. v43}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto/16 :goto_1a

    :goto_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    if-eqz v3, :cond_38

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_39
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    array-length v3, v2

    if-eqz v3, :cond_3b

    array-length v3, v2

    move v4, v10

    :goto_22
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3a

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_22

    :cond_3b
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v2, v31

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    invoke-static {v2}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v2

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3c
    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_3d

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_3d
    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3e
    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    :cond_3f
    return-void

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ab80d9c -> :sswitch_5
        -0xa3fb04d -> :sswitch_4
        0x2a94ad33 -> :sswitch_3
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_1
        0x7c9f11cd -> :sswitch_0
    .end sparse-switch

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final build()Landroid/app/Notification;
    .locals 2

    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    iget-object p0, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationCompatBuilder;)V

    :cond_0
    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method public final setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method
