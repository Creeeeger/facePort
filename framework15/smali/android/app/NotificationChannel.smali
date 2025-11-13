.class public final Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ALLOW_BUBBLE_OFF:I = 0x0

.field public static final blacklist ALLOW_BUBBLE_ON:I = 0x1

.field private static final blacklist ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubbles"

.field private static final greylist-max-o ATT_BLOCKABLE_SYSTEM:Ljava/lang/String; = "blockable_system"

.field private static final greylist-max-o ATT_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final blacklist ATT_CONVERSATION_ID:Ljava/lang/String; = "conv_id"

.field private static final greylist-max-o ATT_DELETED:Ljava/lang/String; = "deleted"

.field private static final blacklist ATT_DELETED_TIME_MS:Ljava/lang/String; = "del_time"

.field private static final blacklist ATT_DEMOTE:Ljava/lang/String; = "dem"

.field private static final greylist-max-o ATT_DESC:Ljava/lang/String; = "desc"

.field private static final greylist-max-o ATT_FG_SERVICE_SHOWN:Ljava/lang/String; = "fgservice"

.field private static final greylist-max-o ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o ATT_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final blacklist ATT_IMP_CONVERSATION:Ljava/lang/String; = "imp_conv"

.field private static final greylist-max-o ATT_LIGHTS:Ljava/lang/String; = "lights"

.field private static final greylist-max-o ATT_LIGHT_COLOR:Ljava/lang/String; = "light_color"

.field private static final greylist-max-o ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATT_ORIG_IMP:Ljava/lang/String; = "orig_imp"

.field private static final blacklist ATT_PARENT_CHANNEL:Ljava/lang/String; = "parent"

.field private static final greylist-max-o ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final greylist-max-o ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final greylist-max-o ATT_SOUND:Ljava/lang/String; = "sound"

.field private static final greylist-max-o ATT_USAGE:Ljava/lang/String; = "usage"

.field private static final greylist-max-o ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field private static final greylist-max-o ATT_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final blacklist ATT_VIBRATION_EFFECT:Ljava/lang/String; = "vibration_effect"

.field private static final greylist-max-o ATT_VIBRATION_ENABLED:Ljava/lang/String; = "vibration_enabled"

.field private static final greylist-max-o ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final blacklist CONVERSATION_CHANNEL_ID_FORMAT:Ljava/lang/String; = "%1$s : %2$s"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ALLOW_BUBBLE:I = -0x1

.field public static final whitelist DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final greylist-max-o DEFAULT_DELETED:Z = false

.field private static final blacklist DEFAULT_DELETION_TIME_MS:J = -0x1L

.field private static final greylist-max-o DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final greylist-max-o DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final greylist-max-o DEFAULT_SHOW_BADGE:Z = true

.field private static final greylist-max-o DEFAULT_VISIBILITY:I = -0x3e8

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist EDIT_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final whitelist EDIT_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist EDIT_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final whitelist EDIT_LOCKED_DEVICE:Ljava/lang/String; = "locked"

.field public static final whitelist EDIT_SOUND:Ljava/lang/String; = "sound"

.field public static final whitelist EDIT_VIBRATION:Ljava/lang/String; = "vibration"

.field public static final whitelist EDIT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o LOCKABLE_FIELDS:[I

.field public static final blacklist MAX_SERIALIZED_VIBRATION_LENGTH:I = 0x8000

.field public static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field public static final blacklist MAX_VIBRATION_LENGTH:I = 0x1f4

.field public static final blacklist PLACEHOLDER_CONVERSATION_ID:Ljava/lang/String; = ":placeholder_id"

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationChannel"

.field private static final greylist-max-o TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final blacklist USER_LOCKED_ALLOW_BUBBLE:I = 0x100

.field public static final blacklist USER_LOCKED_APP_CHANGED:I = 0x200

.field public static final greylist-max-o USER_LOCKED_IMPORTANCE:I = 0x4

.field public static final greylist-max-o USER_LOCKED_LIGHTS:I = 0x8

.field public static final greylist-max-o USER_LOCKED_PRIORITY:I = 0x1

.field public static final greylist-max-o USER_LOCKED_SHOW_BADGE:I = 0x80

.field public static final whitelist USER_LOCKED_SOUND:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USER_LOCKED_VIBRATION:I = 0x10

.field public static final greylist-max-o USER_LOCKED_VISIBILITY:I = 0x2


# instance fields
.field private blacklist mAllowBubbles:I

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBlockableSystem:Z

.field private greylist-max-o mBypassDnd:Z

.field private blacklist mConversationId:Ljava/lang/String;

.field private greylist-max-o mDeleted:Z

.field private blacklist mDeletedTime:J

.field private blacklist mDemoted:Z

.field private greylist-max-o mDesc:Ljava/lang/String;

.field private greylist-max-o mGroup:Ljava/lang/String;

.field private greylist mId:Ljava/lang/String;

.field private greylist-max-o mImportance:I

.field private blacklist mImportanceLockedByOEM:Z

.field private blacklist mImportanceLockedDefaultApp:Z

.field private blacklist mImportantConvo:Z

.field private blacklist mLastNotificationUpdateTimeMs:J

.field private greylist-max-o mLightColor:I

.field private greylist-max-o mLights:Z

.field private greylist-max-o mLockscreenVisibility:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mOriginalImportance:I

.field private blacklist mParentId:Ljava/lang/String;

.field private greylist-max-o mShowBadge:Z

.field private greylist-max-o mSound:Landroid/net/Uri;

.field private blacklist mSoundMissingReason:I

.field private blacklist mSoundRestored:Z

.field private greylist-max-o mUserLockedFields:I

.field private blacklist mUserVisibleTaskShown:Z

.field private blacklist mVibrationEffect:Landroid/os/VibrationEffect;

.field private greylist-max-o mVibrationEnabled:Z

.field private blacklist mVibrationPattern:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    new-instance v0, Landroid/app/NotificationChannel$1;

    invoke-direct {v0}, Landroid/app/NotificationChannel$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x100
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iget-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_4

    :cond_4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    move v3, v0

    :goto_5
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v3, v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_6

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    :cond_6
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v3

    if-eqz v3, :cond_8

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    goto :goto_6

    :cond_7
    move-object v3, v2

    :goto_6
    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_7

    :cond_9
    move v3, v0

    :goto_7
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_8

    :cond_a
    move v3, v0

    :goto_8
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_9

    :cond_b
    move v3, v0

    :goto_9
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    :cond_c
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_a

    :cond_d
    iput-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    :cond_e
    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    return-void
.end method

.method private blacklist getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "android.resource"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFieldsString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getRedatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hasDescription "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImportance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBypassDnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLockscreenVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLightColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVibrationPattern="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVibrationEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v2, :cond_1

    const-string/jumbo v2, "null"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserLockedFields="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserVisibleTaskShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVibrationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowBadge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeletedTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGroup=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAudioAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlockableSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAllowBubbles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImportanceLockedByOEM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImportanceLockedDefaultApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOriginalImp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConversationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDemoted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mImportantConvo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastNotificationUpdateTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSoundMissingReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getRedatedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->isMatchPrivatePattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object p1
.end method

.method private greylist-max-o getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri permission from App"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotiChannel"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private blacklist getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v1, p1

    const/16 v2, 0x1f4

    invoke-virtual {p1, v2}, Landroid/os/VibrationEffect;->cropToLengthOrNull(I)Landroid/os/VibrationEffect;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-static {v1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x8000

    if-le v3, v4, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private blacklist getUncanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne v1, p3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v1, p3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/media/RingtoneManager;->getRingtoneUriForRestore(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to uncanonicalized sound uri for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationChannel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    :cond_3
    :goto_1
    return-object p2
.end method

.method private blacklist isMatchPrivatePattern(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method private static greylist-max-o longArrayToString([J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "forRestore is true but got null context"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v2, "desc"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    nop

    const-string/jumbo v2, "priority"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    const-string/jumbo v0, "visibility"

    const/16 v2, -0x3e8

    invoke-static {p1, v0, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    if-eqz p2, :cond_3

    invoke-virtual {p0, p4, v0, p3, v5}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    invoke-virtual {p0, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string/jumbo v6, "lights"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string/jumbo v6, "light_color"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const-string/jumbo v6, "vibration"

    invoke-static {p1, v6, v3}, Landroid/app/NotificationChannel;->safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "vibration_effect"

    invoke-static {p1, v6}, Landroid/app/NotificationChannel;->safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    :cond_4
    const-string/jumbo v6, "vibration_enabled"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string/jumbo v6, "show_badge"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v6, "deleted"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-string v6, "del_time"

    const-wide/16 v7, -0x1

    invoke-static {p1, v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    const-string v6, "group"

    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    const-string/jumbo v6, "locked"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->lockFields(I)V

    const-string v6, "fgservice"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    const-string v6, "blockable_system"

    invoke-static {p1, v6, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    const-string v6, "allow_bubbles"

    const/4 v7, -0x1

    invoke-static {p1, v6, v7}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    const-string/jumbo v6, "orig_imp"

    invoke-static {p1, v6, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    const-string/jumbo v2, "parent"

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "conv_id"

    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dem"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    const-string v2, "imp_conv"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    return-void
.end method

.method private static blacklist safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;
    .locals 4

    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static blacklist safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "NotificationChannel"

    const-string v4, "Unable to read serialized vibration effect"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method private static blacklist vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v0, v1}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationChannel"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "forBackup is true but got null context"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    const-string v1, "channel"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_4

    const-string v2, "importance"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "priority"

    const/4 v4, 0x2

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eq v2, v3, :cond_6

    const-string/jumbo v2, "visibility"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_8

    const-string/jumbo v4, "sound"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const-string/jumbo v5, "usage"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    const-string v5, "content_type"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    const-string v5, "flags"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "lights"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "light_color"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "vibration_enabled"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration_effect"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "locked"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "fgservice"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "show_badge"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "deleted"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_13

    const-string v4, "del_time"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    invoke-interface {p1, v0, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    const-string v4, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    const-string v4, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    if-eq v4, v3, :cond_17

    const-string/jumbo v3, "orig_imp"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "parent"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    const-string v3, "conv_id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "dem"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "imp_conv"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public whitelist canBubble()Z
    .locals 2

    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist canBypassDnd()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationChannel;
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    :cond_0
    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setLastNotificationUpdateTimeMs(J)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz p3, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/NotificationChannel;->getRedatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationChannel{mId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    const-wide v7, 0x2030000000aL

    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1090000000fL

    iget-object v4, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000013L

    iget v4, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist enableLights(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    return-void
.end method

.method public whitelist enableVibration(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

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

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mLights:Z

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    iget v4, v2, Landroid/app/NotificationChannel;->mAllowBubbles:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    iget-object v4, v2, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iget v4, v2, Landroid/app/NotificationChannel;->mOriginalImportance:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAllowBubbles()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletedTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-wide v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportance()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public blacklist getLastNotificationUpdateTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    return-wide v0
.end method

.method public whitelist getLightColor()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public whitelist getLockscreenVisibility()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalImportance()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return v0
.end method

.method public whitelist getParentChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSound()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserLockedFields()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public whitelist getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public whitelist getVibrationPattern()[J
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    return-object v0
.end method

.method public whitelist hasUserSetImportance()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasUserSetSound()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    iget-boolean v8, v0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v28, v1

    iget v1, v0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget v1, v0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v23

    iget-object v1, v0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v1, v28

    filled-new-array/range {v1 .. v27}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, v0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public whitelist isBlockable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isDeleted()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public whitelist isDemoted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return v0
.end method

.method public blacklist isImportanceLockedByCriticalDeviceFunction()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return v0
.end method

.method public blacklist isImportanceLockedByOEM()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    return v0
.end method

.method public whitelist isImportantConversation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return v0
.end method

.method public blacklist isSoundRestored()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    return v0
.end method

.method public blacklist isUserVisibleTaskShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    return v0
.end method

.method public greylist-max-o lockFields(I)V
    .locals 1

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return-void
.end method

.method public whitelist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    return-void
.end method

.method public blacklist populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    return-void
.end method

.method public blacklist restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    if-eqz v2, :cond_9

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroid/app/NotificationChannel;->getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-boolean v0, v1, Landroid/app/NotificationChannel;->mSoundRestored:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    iput-boolean v6, v1, Landroid/app/NotificationChannel;->mSoundRestored:Z

    const/4 v0, 0x2

    iput v0, v1, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    :cond_1
    iput-boolean v5, v1, Landroid/app/NotificationChannel;->mSoundRestored:Z

    return-object v2

    :cond_2
    iput-boolean v6, v1, Landroid/app/NotificationChannel;->mSoundRestored:Z

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_8

    :try_start_0
    invoke-static {v4}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "_id"

    const-string/jumbo v10, "is_notification"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "title"

    invoke-virtual {v4, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v12, "android:query-arg-sql-selection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "title=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9, v11, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v7, v13, v14}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v5, 0x3

    iput v5, v1, Landroid/app/NotificationChannel;->mSoundMissingReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    nop

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_4

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    return-object v0

    :cond_5
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    if-eqz v12, :cond_6

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    nop

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v12, :cond_7

    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v0

    :try_start_8
    invoke-virtual {v5, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v5
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is not MediaSore uri : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NotiChannel"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x4

    iput v0, v1, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    :cond_8
    return-object v6

    :cond_9
    :goto_3
    return-object v0
.end method

.method public blacklist setAllowBubbles(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return-void
.end method

.method public whitelist setAllowBubbles(Z)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return-void
.end method

.method public whitelist setBlockable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return-void
.end method

.method public whitelist setBypassDnd(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return-void
.end method

.method public whitelist setConversationId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return-void
.end method

.method public blacklist setDeletedTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-void
.end method

.method public blacklist setDemoted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public whitelist setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-void
.end method

.method public whitelist setImportance(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    return-void
.end method

.method public blacklist setImportanceLockedByCriticalDeviceFunction(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return-void
.end method

.method public blacklist setImportanceLockedByOEM(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    return-void
.end method

.method public blacklist setImportantConversation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return-void
.end method

.method public blacklist setLastNotificationUpdateTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    return-void
.end method

.method public whitelist setLightColor(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return-void
.end method

.method public whitelist setLockscreenVisibility(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setOriginalImportance(I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return-void
.end method

.method public whitelist setShowBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return-void
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public blacklist setUserVisibleTaskShown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    return-void
.end method

.method public whitelist setVibrationEffect(Landroid/os/VibrationEffect;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->computeCreateWaveformOffOnTimingsOrNull()[J

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v0, v1

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0, v2}, Landroid/app/NotificationChannel;->getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2

    iput-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    :goto_1
    goto :goto_3

    :cond_3
    nop

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->computeCreateWaveformOffOnTimingsOrNull()[J

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    :goto_3
    return-void
.end method

.method public whitelist setVibrationPattern([J)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    :cond_1
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist shouldShowLights()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public whitelist shouldVibrate()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return v0
.end method

.method public whitelist toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_0

    nop

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "importance"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "priority"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    nop

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lights"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "light_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fgservice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_effect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_badge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getRedatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationChannel{mId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o unlockFields(I)V
    .locals 2

    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, v2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    :goto_4
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_5
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public whitelist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    return-void
.end method

.method public greylist-max-o writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    return-void
.end method
