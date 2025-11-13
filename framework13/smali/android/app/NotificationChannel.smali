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

.field public static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field public static final blacklist MAX_VIBRATION_LENGTH:I = 0x3e8

.field public static final blacklist PLACEHOLDER_CONVERSATION_ID:Ljava/lang/String; = ":placeholder_id"

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

.field private greylist-max-o mFgServiceShown:Z

.field private greylist-max-o mGroup:Ljava/lang/String;

.field private greylist mId:Ljava/lang/String;

.field private greylist-max-o mImportance:I

.field private blacklist mImportanceLockedByOEM:Z

.field private blacklist mImportanceLockedDefaultApp:Z

.field private blacklist mImportantConvo:Z

.field private greylist-max-o mLightColor:I

.field private greylist-max-o mLights:Z

.field private greylist-max-o mLockscreenVisibility:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mOriginalImportance:I

.field private blacklist mParentId:Ljava/lang/String;

.field private greylist-max-o mShowBadge:Z

.field private greylist-max-o mSound:Landroid/net/Uri;

.field private blacklist mSoundMissingReason:I

.field private greylist-max-o mUserLockedFields:I

.field private greylist-max-o mVibration:[J

.field private greylist-max-o mVibrationEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 212
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    .line 1293
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
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 250
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 252
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 253
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 263
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 265
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 267
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 269
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 271
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 272
    iput-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 273
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 274
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 275
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 276
    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_0
    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 305
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_1
    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 310
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_2

    .line 313
    :cond_2
    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 315
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 320
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_4

    .line 322
    :cond_4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 324
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

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 326
    if-eqz v3, :cond_6

    array-length v4, v3

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_6

    .line 327
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 329
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move v3, v0

    :goto_6
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_7

    :cond_8
    move v3, v0

    :goto_7
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_8

    :cond_9
    move v3, v0

    :goto_8
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    :cond_a
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_9

    .line 337
    :cond_b
    iput-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 339
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    :cond_c
    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 351
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 250
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 252
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 253
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 263
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 265
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 267
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 269
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 272
    iput-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 273
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 274
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 275
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 276
    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    .line 291
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 292
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 293
    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 294
    return-void
.end method

.method private blacklist getFieldsString()Ljava/lang/String;
    .locals 3

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hasDescription "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLockscreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 1389
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserLockedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 1390
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFgServiceShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlockableSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowBubbles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportanceLockedByOEM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportanceLockedDefaultApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportantConvo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSoundMissingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1382
    return-object v0
.end method

.method private greylist-max-o getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1080
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    .line 1081
    .local v0, "sound":Landroid/net/Uri;
    if-eqz v0, :cond_2

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1095
    .local v1, "canonicalSound":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1097
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1099
    :cond_1
    return-object v1

    .line 1100
    .end local v1    # "canonicalSound":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1101
    .local v1, "e":Ljava/lang/SecurityException;
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

    .line 1102
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v2

    .line 1082
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_0
    return-object p1
.end method

.method private static greylist-max-o longArrayToString([J)Ljava/lang/String;
    .locals 4
    .param p0, "values"    # [J

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 1285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1286
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1288
    .end local v1    # "i":I
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1290
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V
    .locals 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 975
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

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

    .line 979
    const/4 v2, 0x0

    const-string v3, "desc"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 980
    nop

    .line 981
    const-string/jumbo v3, "priority"

    invoke-static {p1, v3, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 980
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 982
    const-string/jumbo v0, "visibility"

    const/16 v3, -0x3e8

    invoke-static {p1, v0, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 984
    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 985
    .local v0, "sound":Landroid/net/Uri;
    if-eqz p2, :cond_3

    invoke-direct {p0, p3, v0}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Landroid/util/TypedXmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 987
    const-string v4, "lights"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 988
    const-string v4, "light_color"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 989
    const-string/jumbo v4, "vibration"

    invoke-static {p1, v4, v2}, Landroid/app/NotificationChannel;->safeLongArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[J)[J

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 990
    const-string/jumbo v4, "vibration_enabled"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 991
    const-string/jumbo v4, "show_badge"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 992
    const-string v4, "deleted"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 993
    const-wide/16 v4, -0x1

    const-string v6, "del_time"

    invoke-static {p1, v6, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 995
    const-string v4, "group"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 996
    const-string v4, "locked"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 997
    const-string v4, "fgservice"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 998
    const-string v4, "blockable_system"

    invoke-static {p1, v4, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 999
    const/4 v4, -0x1

    const-string v5, "allow_bubbles"

    invoke-static {p1, v5, v4}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1000
    const-string/jumbo v4, "orig_imp"

    invoke-static {p1, v4, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1001
    const-string/jumbo v3, "parent"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    const-string v4, "conv_id"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {p0, v3, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v2, "dem"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 1004
    const-string v2, "imp_conv"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 1005
    return-void
.end method

.method private greylist-max-o restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1009
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1013
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1021
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1022
    .local v2, "canonicalizedUri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1025
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    .line 1027
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1033
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1034
    .local v3, "unCanonicalizedUri":Landroid/net/Uri;
    if-nez v3, :cond_7

    .line 1036
    :try_start_0
    invoke-static {v2}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "volumeName":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1038
    .local v5, "audioUri":Landroid/net/Uri;
    const-string v6, "_id"

    const-string v7, "is_notification"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 1039
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v7, "title"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1040
    .local v7, "title":Ljava/lang/String;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1041
    .local v8, "queryArgs":Landroid/os/Bundle;
    const-string v9, "android:query-arg-sql-selection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "title=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v1, v5, v6, v8, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1045
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1046
    .local v9, "rowId":J
    invoke-static {v4, v9, v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1047
    .local v11, "foundUri":Landroid/net/Uri;
    if-nez v11, :cond_2

    const/4 v12, 0x3

    iput v12, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1048
    :cond_2
    nop

    .line 1051
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1053
    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1048
    :cond_3
    return-object v11

    .line 1051
    .end local v9    # "rowId":J
    .end local v11    # "foundUri":Landroid/net/Uri;
    :cond_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1052
    nop

    .line 1053
    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1056
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "volumeName":Ljava/lang/String;
    .end local v5    # "audioUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "queryArgs":Landroid/os/Bundle;
    :cond_5
    goto :goto_2

    .line 1042
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v4    # "volumeName":Ljava/lang/String;
    .restart local v5    # "audioUri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "queryArgs":Landroid/os/Bundle;
    :catchall_0
    move-exception v9

    goto :goto_0

    .line 1051
    :catchall_1
    move-exception v9

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1052
    nop

    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "canonicalizedUri":Landroid/net/Uri;
    .end local v3    # "unCanonicalizedUri":Landroid/net/Uri;
    .end local v4    # "volumeName":Ljava/lang/String;
    .end local v5    # "audioUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "queryArgs":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/NotificationChannel;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1042
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "canonicalizedUri":Landroid/net/Uri;
    .restart local v3    # "unCanonicalizedUri":Landroid/net/Uri;
    .restart local v4    # "volumeName":Ljava/lang/String;
    .restart local v5    # "audioUri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "queryArgs":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/NotificationChannel;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_6

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v10

    :try_start_8
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "canonicalizedUri":Landroid/net/Uri;
    .end local v3    # "unCanonicalizedUri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/app/NotificationChannel;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_1
    throw v9
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1054
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "volumeName":Ljava/lang/String;
    .end local v5    # "audioUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "queryArgs":Landroid/os/Bundle;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "canonicalizedUri":Landroid/net/Uri;
    .restart local v3    # "unCanonicalizedUri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/app/NotificationChannel;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is not MediaSore uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotiChannel"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    .line 1058
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1060
    :cond_7
    return-object v3

    .line 1010
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "canonicalizedUri":Landroid/net/Uri;
    .end local v3    # "unCanonicalizedUri":Landroid/net/Uri;
    :cond_8
    :goto_3
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mSoundMissingReason:I

    .line 1011
    return-object v0
.end method

.method private static blacklist safeAudioAttributes(Landroid/util/TypedXmlPullParser;)Landroid/media/AudioAttributes;
    .locals 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 1243
    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1244
    .local v0, "usage":I
    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1246
    .local v1, "contentType":I
    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 1247
    .local v2, "flags":I
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1248
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1249
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1250
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 1251
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 1247
    return-object v3
.end method

.method private static blacklist safeBool(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 1264
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1260
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLongArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[J)[J
    .locals 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # [J

    .line 1268
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "attributeValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 1270
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1271
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [J

    .line 1272
    .local v2, "longValues":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1274
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    goto :goto_1

    .line 1275
    :catch_0
    move-exception v4

    .line 1276
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v5, 0x0

    aput-wide v5, v2, v3

    .line 1272
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1279
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method private static blacklist safeUri(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1255
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V
    .locals 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
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

    .line 1114
    const/4 v0, 0x0

    const-string v1, "channel"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1120
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_4

    .line 1123
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const-string v4, "importance"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    const/4 v2, 0x2

    const-string/jumbo v4, "priority"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 1129
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const-string/jumbo v4, "visibility"

    invoke-interface {p1, v0, v4, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    .line 1132
    .local v2, "sound":Landroid/net/Uri;
    :goto_2
    if-eqz v2, :cond_8

    .line 1133
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sound"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    :cond_8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1136
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const-string/jumbo v5, "usage"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    const-string v5, "content_type"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    const-string v5, "flags"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    :cond_9
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1141
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    const-string v5, "lights"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-eqz v4, :cond_b

    .line 1144
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    const-string v5, "light_color"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    :cond_b
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1147
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v4

    const-string/jumbo v5, "vibration_enabled"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    :cond_c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1150
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vibration"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1153
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    const-string v5, "locked"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    :cond_e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1156
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    const-string v5, "fgservice"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1159
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    const-string/jumbo v5, "show_badge"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1161
    :cond_10
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1162
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    const-string v5, "deleted"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    :cond_11
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    .line 1165
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    const-string v6, "del_time"

    invoke-interface {p1, v0, v6, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    :cond_12
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1168
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    const-string v5, "group"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1170
    :cond_13
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1171
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    const-string v5, "blockable_system"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 1174
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v4

    const-string v5, "allow_bubbles"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    :cond_15
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    if-eq v4, v3, :cond_16

    .line 1177
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v3

    const-string/jumbo v4, "orig_imp"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    :cond_16
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1180
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "parent"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1182
    :cond_17
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1183
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conv_id"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    :cond_18
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1186
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    const-string v4, "dem"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    :cond_19
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1189
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    const-string v4, "imp_conv"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    :cond_1a
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1196
    return-void
.end method


# virtual methods
.method public whitelist canBubble()Z
    .locals 2

    .line 806
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

    .line 705
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .locals 1

    .line 787
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "redacted"    # Z

    .line 1363
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz p3, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1364
    .local v0, "redactedName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationChannel{mId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1367
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    .local v1, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1412
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1414
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1415
    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1416
    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1417
    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1418
    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1419
    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1420
    iget-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1421
    const-wide v3, 0x10900000007L

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1423
    :cond_0
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1424
    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1425
    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    if-eqz v2, :cond_1

    .line 1426
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    .line 1427
    .local v5, "v":J
    const-wide v7, 0x2030000000aL

    invoke-virtual {p1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1426
    .end local v5    # "v":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1430
    :cond_1
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1431
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1432
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1433
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1434
    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1435
    const-wide v2, 0x1090000000fL

    iget-object v4, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1436
    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_2

    .line 1437
    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1439
    :cond_2
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1440
    const-wide v2, 0x10800000013L

    iget v4, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1442
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1443
    return-void
.end method

.method public whitelist enableLights(Z)V
    .locals 0
    .param p1, "lights"    # Z

    .line 561
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 562
    return-void
.end method

.method public whitelist enableVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .line 583
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 584
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1313
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1314
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1315
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1316
    .local v2, "that":Landroid/app/NotificationChannel;
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-ne v3, v4, :cond_2

    .line 1318
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mLights:Z

    if-ne v3, v4, :cond_2

    .line 1320
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1321
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1322
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v4, v2, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-ne v3, v4, :cond_2

    .line 1325
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1326
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1327
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    iget v4, v2, Landroid/app/NotificationChannel;->mAllowBubbles:I

    if-ne v3, v4, :cond_2

    .line 1329
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1330
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 1331
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1332
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/NotificationChannel;->mVibration:[J

    iget-object v4, v2, Landroid/app/NotificationChannel;->mVibration:[J

    .line 1333
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1335
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1336
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

    .line 1339
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1340
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1341
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1342
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1316
    :goto_0
    return v0

    .line 1314
    .end local v2    # "that":Landroid/app/NotificationChannel;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAllowBubbles()I
    .locals 1

    .line 813
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getConversationId()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletedTimeMs()J
    .locals 2

    .line 844
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-wide v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportance()I
    .locals 1

    .line 697
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public whitelist getLightColor()I
    .locals 1

    .line 754
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public whitelist getLockscreenVisibility()I
    .locals 1

    .line 777
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 678
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalImportance()I
    .locals 1

    .line 910
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return v0
.end method

.method public whitelist getParentChannelId()Ljava/lang/String;
    .locals 1

    .line 821
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSound()Landroid/net/Uri;
    .locals 1

    .line 732
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserLockedFields()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 852
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public whitelist getVibrationPattern()[J
    .locals 1

    .line 769
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    return-object v0
.end method

.method public whitelist hasUserSetImportance()Z
    .locals 1

    .line 944
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

    .line 952
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
    .locals 3

    .line 1347
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1348
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1349
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1350
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1351
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    .line 1352
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1354
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1347
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 1355
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1356
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist isBlockable()Z
    .locals 1

    .line 867
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .locals 1

    .line 712
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

    .line 837
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public whitelist isDemoted()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return v0
.end method

.method public greylist-max-o isFgServiceShown()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    return v0
.end method

.method public blacklist isImportanceLockedByCriticalDeviceFunction()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return v0
.end method

.method public blacklist isImportanceLockedByOEM()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    return v0
.end method

.method public whitelist isImportantConversation()Z
    .locals 1

    .line 725
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return v0
.end method

.method public greylist-max-o lockFields(I)V
    .locals 1
    .param p1, "field"    # I

    .line 419
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 420
    return-void
.end method

.method public whitelist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 967
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V

    .line 968
    return-void
.end method

.method public greylist-max-o populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;

    .line 959
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->populateFromXml(Landroid/util/TypedXmlPullParser;ZLandroid/content/Context;)V

    .line 960
    return-void
.end method

.method public blacklist setAllowBubbles(I)V
    .locals 0
    .param p1, "allowed"    # I

    .line 647
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 648
    return-void
.end method

.method public whitelist setAllowBubbles(Z)V
    .locals 0
    .param p1, "allowBubbles"    # Z

    .line 640
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 641
    return-void
.end method

.method public whitelist setBlockable(Z)V
    .locals 0
    .param p1, "blockable"    # Z

    .line 471
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 472
    return-void
.end method

.method public whitelist setBypassDnd(Z)V
    .locals 0
    .param p1, "bypassDnd"    # Z

    .line 621
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 622
    return-void
.end method

.method public whitelist setConversationId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentChannelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 663
    iput-object p1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 664
    iput-object p2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public greylist-max-o setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .line 442
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 443
    return-void
.end method

.method public blacklist setDeletedTimeMs(J)V
    .locals 0
    .param p1, "time"    # J

    .line 450
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 451
    return-void
.end method

.method public blacklist setDemoted(Z)V
    .locals 0
    .param p1, "demoted"    # Z

    .line 926
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 927
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 492
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public greylist-max-o setFgServiceShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 434
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    .line 435
    return-void
.end method

.method public whitelist setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .line 524
    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 506
    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public whitelist setImportance(I)V
    .locals 0
    .param p1, "importance"    # I

    .line 609
    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 610
    return-void
.end method

.method public blacklist setImportanceLockedByCriticalDeviceFunction(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 894
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 895
    return-void
.end method

.method public blacklist setImportanceLockedByOEM(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 876
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    .line 877
    return-void
.end method

.method public blacklist setImportantConversation(Z)V
    .locals 0
    .param p1, "importantConvo"    # Z

    .line 458
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 459
    return-void
.end method

.method public whitelist setLightColor(I)V
    .locals 0
    .param p1, "argb"    # I

    .line 572
    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 573
    return-void
.end method

.method public whitelist setLockscreenVisibility(I)V
    .locals 0
    .param p1, "lockscreenVisibility"    # I

    .line 631
    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 632
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 482
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

    .line 483
    return-void
.end method

.method public blacklist setOriginalImportance(I)V
    .locals 0
    .param p1, "importance"    # I

    .line 918
    iput p1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 919
    return-void
.end method

.method public whitelist setShowBadge(Z)V
    .locals 0
    .param p1, "showBadge"    # Z

    .line 537
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 538
    return-void
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 549
    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 550
    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 551
    return-void
.end method

.method public whitelist setVibrationPattern([J)V
    .locals 1
    .param p1, "vibrationPattern"    # [J

    .line 595
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 596
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibration:[J

    .line 597
    return-void
.end method

.method public whitelist shouldShowLights()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public whitelist shouldVibrate()Z
    .locals 1

    .line 761
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

    .line 1203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1204
    .local v0, "record":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1205
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1206
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1207
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_0

    .line 1208
    nop

    .line 1209
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1208
    const-string v3, "importance"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    const/4 v1, 0x2

    const-string/jumbo v3, "priority"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1214
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1215
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1218
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1221
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1222
    nop

    .line 1223
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1222
    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1224
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1226
    :cond_4
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lights"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "light_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fgservice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_badge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1236
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    const-string v2, "blockable_system"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1237
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    const-string v2, "allow_bubbles"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1239
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1377
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    return-object v0
.end method

.method public greylist-max-o unlockFields(I)V
    .locals 2
    .param p1, "field"    # I

    .line 426
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 427
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 355
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 357
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 361
    :goto_0
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 363
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 367
    :goto_1
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 371
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 373
    :goto_2
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 378
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 380
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    :goto_3
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 383
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 384
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mFgServiceShown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 391
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 393
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 395
    :goto_4
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_5

    .line 396
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 399
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    :goto_5
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedByOEM:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 404
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    return-void
.end method

.method public whitelist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NotificationChannel;->writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1070
    return-void
.end method

.method public greylist-max-o writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/app/NotificationChannel;->writeXml(Landroid/util/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1077
    return-void
.end method
