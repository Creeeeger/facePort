.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$BubbleMetadata;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$TemplateBindResult;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$CallStyle;,
        Landroid/app/Notification$OngoingActivityStyle;,
        Landroid/app/Notification$Colors;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$GroupAlertBehavior;,
        Landroid/app/Notification$NotificationVisibilityOverride;,
        Landroid/app/Notification$Visibility;,
        Landroid/app/Notification$Priority;,
        Landroid/app/Notification$NotificationFlags;,
        Landroid/app/Notification$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final whitelist BADGE_ICON_LARGE:I = 0x2

.field public static final whitelist BADGE_ICON_NONE:I = 0x0

.field public static final whitelist BADGE_ICON_SMALL:I = 0x1

.field public static final whitelist CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final whitelist CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final whitelist CATEGORY_CAR_EMERGENCY:Ljava/lang/String; = "car_emergency"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_INFORMATION:Ljava/lang/String; = "car_information"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_CAR_WARNING:Ljava/lang/String; = "car_warning"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final whitelist CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final whitelist CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final whitelist CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final whitelist CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final whitelist CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final whitelist CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final whitelist CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final whitelist CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final whitelist CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final whitelist CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final whitelist CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final whitelist CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final whitelist CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final whitelist CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final whitelist CATEGORY_VOICEMAIL:Ljava/lang/String; = "voicemail"

.field public static final whitelist CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final whitelist COLOR_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_INVALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALL:I = -0x1

.field public static final whitelist DEFAULT_LIGHTS:I = 0x4

.field public static final whitelist DEFAULT_SOUND:I = 0x1

.field public static final whitelist DEFAULT_VIBRATE:I = 0x2

.field public static final whitelist EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANSWER_COLOR:Ljava/lang/String; = "android.answerColor"

.field public static final whitelist EXTRA_ANSWER_INTENT:Ljava/lang/String; = "android.answerIntent"

.field public static final whitelist EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final whitelist EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final whitelist EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final greylist-max-o EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final whitelist EXTRA_CALL_IS_VIDEO:Ljava/lang/String; = "android.callIsVideo"

.field public static final whitelist EXTRA_CALL_PERSON:Ljava/lang/String; = "android.callPerson"

.field public static final whitelist EXTRA_CALL_TYPE:Ljava/lang/String; = "android.callType"

.field public static final whitelist EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final whitelist EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final whitelist EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final greylist-max-o EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final blacklist EXTRA_CONVERSATION_ICON:Ljava/lang/String; = "android.conversationIcon"

.field public static final whitelist EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final blacklist EXTRA_CONVERSATION_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "android.conversationUnreadMessageCount"

.field public static final whitelist EXTRA_DECLINE_COLOR:Ljava/lang/String; = "android.declineColor"

.field public static final whitelist EXTRA_DECLINE_INTENT:Ljava/lang/String; = "android.declineIntent"

.field public static final greylist-max-o EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final whitelist EXTRA_HANG_UP_INTENT:Ljava/lang/String; = "android.hangUpIntent"

.field public static final greylist-max-o EXTRA_HIDE_SMART_REPLIES:Ljava/lang/String; = "android.hideSmartReplies"

.field public static final whitelist EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final whitelist EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final whitelist EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final whitelist EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final blacklist EXTRA_MEDIA_REMOTE_DEVICE:Ljava/lang/String; = "android.mediaRemoteDevice"

.field public static final blacklist EXTRA_MEDIA_REMOTE_ICON:Ljava/lang/String; = "android.mediaRemoteIcon"

.field public static final blacklist EXTRA_MEDIA_REMOTE_INTENT:Ljava/lang/String; = "android.mediaRemoteIntent"

.field public static final whitelist EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final whitelist EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final whitelist EXTRA_MESSAGING_PERSON:Ljava/lang/String; = "android.messagingUser"

.field public static final whitelist EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final whitelist EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_ACTION_BG_COLOR:Ljava/lang/String; = "android.ongoingActivityActionBgColors"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_BADGE:Ljava/lang/String; = "android.ongoingActivityBadge"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CARD_BACKGROUND:Ljava/lang/String; = "android.ongoingActivityCardBackground"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CARD_ICON:Ljava/lang/String; = "android.ongoingActivityCardIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHIP_BACKGROUND:Ljava/lang/String; = "android.ongoingActivityChipBackground"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHIP_ICON:Ljava/lang/String; = "android.ongoingActivityChipIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHRONOMETER_BASE:Ljava/lang/String; = "android.ongoingActivityChronometerBase"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHRONOMETER_COUNTDOWN:Ljava/lang/String; = "android.ongoingActivityChronometerCountdown"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHRONOMETER_FORMAT:Ljava/lang/String; = "android.ongoingActivityChronometerFormat"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHRONOMETER_SPEED:Ljava/lang/String; = "android.ongoingActivityChronometerSpeed"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CHRONOMETER_START:Ljava/lang/String; = "android.ongoingActivityChronometerStart"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CUSTOM_CARD_VIEW_CENTER_UI:Ljava/lang/String; = "android.ongoingActivityCustomCardViewCenterUI"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_CUSTOM_EXPANDED_CARD_VIEW:Ljava/lang/String; = "android.ongoingActivityCustomExpandedCardView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_EXPANDED_CHIP_TEXT:Ljava/lang/String; = "android.ongoingActivityExpandedChipText"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_EXPANDED_CHIP_VIEW:Ljava/lang/String; = "android.ongoingActivityExpandedChipView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_EXPANDED_NOW_BAR_VIEW:Ljava/lang/String; = "android.ongoingActivityExpandedNowBarView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_MORE_INFO:Ljava/lang/String; = "android.ongoingActivityMoreInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_ACTION_BG_COLOR:Ljava/lang/String; = "android.ongoingActivityNoti.actionBgColor"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_ACTION_PRIMARY_SET:Ljava/lang/String; = "android.ongoingActivityNoti.actionPrimarySet"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_ACTION_TYPE:Ljava/lang/String; = "android.ongoingActivityNoti.actionType"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_BG_COLOR:Ljava/lang/String; = "android.ongoingActivityNoti.bgColor"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHIP_BG_COLOR:Ljava/lang/String; = "android.ongoingActivityNoti.chipBgColor"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHIP_EXPANDED_TEXT:Ljava/lang/String; = "android.ongoingActivityNoti.chipExpandedText"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHIP_EXPANDED_VIEW:Ljava/lang/String; = "android.ongoingActivityNoti.chipExpandedView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHIP_ICON:Ljava/lang/String; = "android.ongoingActivityNoti.chipIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHRONOMETER_REMOTEVIEW:Ljava/lang/String; = "android.ongoingActivityNoti.chronometerRemoteView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHRONOMETER_REMOTEVIEW_POSITION:Ljava/lang/String; = "android.ongoingActivityNoti.chronometerRemoteViewPosition"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_CHRONOMETER_REMOTEVIEW_TAG:Ljava/lang/String; = "android.ongoingActivityNoti.chronometerRemoteViewTag"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_EXPANDED_REMOTEVIEW:Ljava/lang/String; = "android.ongoingActivityNoti.expandedRemoteView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_FIRST_ICON:Ljava/lang/String; = "android.ongoingActivityNoti.firstIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_NOWBAR_ICON:Ljava/lang/String; = "android.ongoingActivityNoti.nowbarIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_NOWBAR_PRIMARY_INFO:Ljava/lang/String; = "android.ongoingActivityNoti.nowbarPrimaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_NOWBAR_REMOTEVIEW:Ljava/lang/String; = "android.ongoingActivityNoti.nowbarRemoteView"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_NOWBAR_SECONDARY_INFO:Ljava/lang/String; = "android.ongoingActivityNoti.nowbarSecondaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PRIMARY_INFO:Ljava/lang/String; = "android.ongoingActivityNoti.primaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS:Ljava/lang/String; = "android.ongoingActivityNoti.progress"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.ongoingActivityNoti.progressIndeterminate"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_MAX:Ljava/lang/String; = "android.ongoingActivityNoti.progressMax"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_SEGMENTS:Ljava/lang/String; = "android.ongoingActivityNoti.progressSegments"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_SEGMENT_INNER_COLOR:Ljava/lang/String; = "android.ongoingActivityNoti.progressSegments.segmentColor"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_SEGMENT_INNER_ICON:Ljava/lang/String; = "android.ongoingActivityNoti.progressSegments.icon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_PROGRESS_SEGMENT_INNER_START:Ljava/lang/String; = "android.ongoingActivityNoti.progressSegments.segmentStart"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_SECONDARY_INFO:Ljava/lang/String; = "android.ongoingActivityNoti.secondaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_SECOND_ICON:Ljava/lang/String; = "android.ongoingActivityNoti.secondIcon"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_STATE:Ljava/lang/String; = "android.ongoingActivityNoti.state"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_STYLE:Ljava/lang/String; = "android.ongoingActivityNoti.style"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOTI_TERTIARY_INFO:Ljava/lang/String; = "android.ongoingActivityNoti.tertiaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_NOW_BAR_EXPANDABLE_TYPE:Ljava/lang/String; = "android.ongoingActivityNowBarExpandableType"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_PRIMARY_ACTION:Ljava/lang/String; = "android.ongoingActivityPrimaryAction"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_PRIMARY_INFO:Ljava/lang/String; = "android.ongoingActivityPrimaryInfo"

.field public static final blacklist EXTRA_ONGOING_ACTIVITY_SECONDARY_INFO:Ljava/lang/String; = "android.ongoingActivitySecondaryInfo"

.field public static final whitelist EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final whitelist EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final whitelist EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final whitelist EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final whitelist EXTRA_PICTURE_ICON:Ljava/lang/String; = "android.pictureIcon"

.field public static final whitelist EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final whitelist EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final whitelist EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final greylist-max-o EXTRA_REDUCED_IMAGES:Ljava/lang/String; = "android.reduced.images"

.field public static final whitelist EXTRA_REMOTE_INPUT_DRAFT:Ljava/lang/String; = "android.remoteInputDraft"

.field public static final whitelist EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final blacklist EXTRA_REMOTE_INPUT_HISTORY_ITEMS:Ljava/lang/String; = "android.remoteInputHistoryItems"

.field public static final whitelist EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final whitelist EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final whitelist EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final greylist-max-o EXTRA_SHOW_REMOTE_INPUT_SPINNER:Ljava/lang/String; = "android.remoteInputSpinner"

.field public static final blacklist EXTRA_SHOW_SMALL_ICON:Ljava/lang/String; = "android.showSmallIcon"

.field public static final whitelist EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final whitelist EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final whitelist EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final whitelist EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final whitelist EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final whitelist EXTRA_VERIFICATION_ICON:Ljava/lang/String; = "android.verificationIcon"

.field public static final whitelist EXTRA_VERIFICATION_TEXT:Ljava/lang/String; = "android.verificationText"

.field public static final whitelist FLAG_AUTOGROUP_SUMMARY:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CANCEL:I = 0x10

.field public static final whitelist FLAG_BUBBLE:I = 0x1000

.field public static final greylist-max-o FLAG_CAN_COLORIZE:I = 0x800

.field public static final whitelist FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final blacklist FLAG_FSI_REQUESTED_BUT_DENIED:I = 0x4000

.field public static final whitelist FLAG_GROUP_SUMMARY:I = 0x200

.field public static final whitelist FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_INSISTENT:I = 0x4

.field public static final blacklist FLAG_LIFETIME_EXTENDED_BY_DIRECT_REPLY:I = 0x10000

.field public static final whitelist FLAG_LOCAL_ONLY:I = 0x100

.field public static final whitelist FLAG_NO_CLEAR:I = 0x20

.field public static final blacklist FLAG_NO_DISMISS:I = 0x2000

.field public static final whitelist FLAG_ONGOING_EVENT:I = 0x2

.field public static final whitelist FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final whitelist FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_USER_INITIATED_JOB:I = 0x8000

.field public static final whitelist FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final whitelist GROUP_ALERT_ALL:I = 0x0

.field public static final whitelist GROUP_ALERT_CHILDREN:I = 0x2

.field public static final whitelist GROUP_ALERT_SUMMARY:I = 0x1

.field public static final blacklist GROUP_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final whitelist INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final blacklist MAX_ACTION_BUTTONS:I = 0x3

.field private static final greylist-max-o MAX_CHARSEQUENCE_LENGTH:I = 0x400

.field private static final blacklist MAX_LARGE_ICON_ASPECT_RATIO:F = 1.7777778f

.field private static final greylist-max-o MAX_REPLY_HISTORY:I = 0x5

.field private static final blacklist PLATFORM_STYLE_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EXTRA_CAPSULE:Ljava/lang/String; = "sem.android.capsule"

.field public static final blacklist SEM_FLAG_BRIEF:I = 0x2000

.field public static final blacklist SEM_FLAG_DISABLE_CALL_EDGE_LIGHTING:I = 0x1000

.field public static final whitelist SEM_FLAG_DISABLE_EDGE_LIGHTING:I = 0x20

.field public static final blacklist SEM_FLAG_DISABLE_HEADS_UP:I = 0x8

.field public static final whitelist SEM_FLAG_DISABLE_SIMPLE_COVER_SCREEN_NOTIFICATION:I = 0x100

.field public static final blacklist SEM_FLAG_HALF_BRIEF:I = 0x4000

.field public static final blacklist SEM_FLAG_HIGHLIGHTS:I = 0x20000

.field public static final blacklist SEM_FLAG_INSIGNIFICANT:I = 0x40000

.field public static final blacklist SEM_FLAG_INSIGNIFICANT_BG_ACTIVITIES:I = 0x100000

.field public static final blacklist SEM_FLAG_INSIGNIFICANT_MINIMIZED:I = 0x200000

.field public static final blacklist SEM_FLAG_INSIGNIFICANT_OLD_NOTI:I = 0x400000

.field public static final blacklist SEM_FLAG_INSIGNIFICANT_PROMOTION:I = 0x80000

.field public static final blacklist SEM_FLAG_SKIP_ASSITANT:I = 0x8000

.field public static final blacklist SEM_FLAG_SNOOZED:I = 0x80

.field public static final whitelist SEM_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist SEM_PRIORITY_HIGH:I = 0xa

.field public static final whitelist SEM_PRIORITY_MAX:I = 0x14

.field private static final greylist-max-o STANDARD_LAYOUTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Notification"

.field public static final whitelist VISIBILITY_PRIVATE:I = 0x0

.field public static final whitelist VISIBILITY_PUBLIC:I = 0x1

.field public static final whitelist VISIBILITY_SECRET:I = -0x1

.field static final blacklist WEARABLE_EXTENDER_BACKGROUND_BLOCKED:J = 0x10204890L

.field public static blacklist processAllowlistToken:Landroid/os/IBinder;


# instance fields
.field public whitelist actions:[Landroid/app/Notification$Action;

.field public greylist allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist category:Ljava/lang/String;

.field public whitelist color:I

.field public whitelist contentIntent:Landroid/app/PendingIntent;

.field public whitelist contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o creationTime:J

.field public whitelist defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist deleteIntent:Landroid/app/PendingIntent;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist flags:I

.field public whitelist fullScreenIntent:Landroid/app/PendingIntent;

.field public whitelist headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist iconLevel:I

.field public whitelist largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mAllowSystemGeneratedContextualActions:Z

.field private blacklist mAllowlistToken:Landroid/os/IBinder;

.field private blacklist mAppIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mBadgeIcon:I

.field private blacklist mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

.field private blacklist mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private greylist mChannelId:Ljava/lang/String;

.field private blacklist mFgsDeferBehavior:I

.field private greylist-max-o mGroupAlertBehavior:I

.field private greylist mGroupKey:Ljava/lang/String;

.field private greylist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private greylist-max-o mSettingsText:Ljava/lang/CharSequence;

.field private greylist-max-o mShortcutId:Ljava/lang/String;

.field private greylist mSmallIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mSortKey:Ljava/lang/String;

.field private greylist-max-o mTimeout:J

.field private greylist-max-o mUsesStandardHeader:Z

.field public whitelist number:I

.field public blacklist parcelDataSize:I

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist publicVersion:Landroid/app/Notification;

.field public blacklist semBadgeTarget:Landroid/content/ComponentName;

.field public whitelist semFlags:I

.field public whitelist semMissedCount:I

.field public whitelist semPriority:I

.field public whitelist sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist tickerText:Ljava/lang/CharSequence;

.field public whitelist tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist visibility:I

.field public whitelist when:J


# direct methods
.method public static synthetic blacklist $r8$lambda$xKxPSlWQf-Ov1AyfI7OJBxzS3vM(Landroid/app/Notification;Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;->lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeout(Landroid/app/Notification;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification;->mUsesStandardHeader:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPLATFORM_STYLE_CLASSES()Ljava/util/List;
    .locals 1

    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smareIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/Notification;->buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnormalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/app/Notification;->normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smscaleDownIfNecessaryForBigPicture(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/Notification;->scaleDownIfNecessaryForBigPicture(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/app/Notification;->stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/Notification;->STANDARD_LAYOUTS:Landroid/util/ArraySet;

    const v1, 0x10900d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Notification$BigTextStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Notification$BigPictureStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/Notification$InboxStyle;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/Notification$MediaStyle;

    aput-object v4, v0, v3

    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    aput-object v3, v0, v1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-class v2, Landroid/app/Notification$MessagingStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Landroid/app/Notification$CallStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Landroid/app/Notification$OngoingActivityStyle;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v0, p0, Landroid/app/Notification;->color:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification;->creationTime:J

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    :goto_0
    iput v0, p0, Landroid/app/Notification;->priority:I

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v0, p0, Landroid/app/Notification;->color:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput p1, p0, Landroid/app/Notification;->icon:I

    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-wide p3, p0, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-wide p3, p0, Landroid/app/Notification;->creationTime:J

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.showWhen"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    :goto_0
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v0, p0, Landroid/app/Notification;->color:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide p4, p0, Landroid/app/Notification;->creationTime:J

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showWhen"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-static {p1, v0, p8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->number:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v0, p0, Landroid/app/Notification;->color:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    iput v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    return-void
.end method

.method public static greylist-max-o addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .locals 2

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static greylist-max-o areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .locals 10

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    array-length v4, v0

    array-length v5, v1

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_a

    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v2

    :cond_4
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v5, :cond_5

    new-array v5, v3, [Landroid/app/RemoteInput;

    :cond_5
    if-nez v6, :cond_6

    new-array v6, v3, [Landroid/app/RemoteInput;

    :cond_6
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_7

    return v2

    :cond_7
    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_9

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    return v2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    return v3
.end method

.method public static blacklist areIconsDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist areIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-eq v2, v1, :cond_5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v6

    if-eq v5, v6, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public static greylist-max-o areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o areRemoteViewsChanged(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public static greylist-max-o areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z

    move-result v0

    return v0
.end method

.method private static blacklist buildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 7

    const/4 v0, -0x1

    const v1, 0x1020454

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    iget-boolean v2, p3, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const v2, 0x1020464

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeFromParent(I)V

    invoke-static {p0, p1, p3, v3}, Landroid/app/Notification$Builder;->-$$Nest$smsetHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p4, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v5, 0x10502ea

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    invoke-virtual {v4, p1, v1, v5}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    :goto_0
    const v2, 0x102000d

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    const/4 v0, 0x0

    :cond_1
    const v2, 0x1020450

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    return-void
.end method

.method public static blacklist defaultsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ALL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, 0x0

    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "SOUND"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x2

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "VIBRATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x3

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x5

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "0"

    return-object v1

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UNKNOWN(0x%08x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v1, "|"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o fixDuplicateExtras()V
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon"

    invoke-direct {p0, v0, v1}, Landroid/app/Notification;->fixDuplicateExtra(Landroid/os/Parcelable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "SHOW_LIGHTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x2

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "ONGOING_EVENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x3

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "INSISTENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x5

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "ONLY_ALERT_ONCE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x9

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "AUTO_CANCEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x11

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "NO_CLEAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x21

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "FOREGROUND_SERVICE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x41

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "HIGH_PRIORITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x81

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "LOCAL_ONLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x101

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, "GROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x201

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, "AUTOGROUP_SUMMARY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x401

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "CAN_COLORIZE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x801

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "BUBBLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x1001

    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    const-string v1, "NO_DISMISS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x2001

    :cond_d
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    const-string v1, "FSI_REQUESTED_BUT_DENIED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, -0x4001

    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "USER_INITIATED_JOB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, -0x8001

    and-int/2addr p0, v1

    :cond_f
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "LIFETIME_EXTENDED_BY_DIRECT_REPLY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, -0x10001

    and-int/2addr p0, v1

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "0"

    return-object v1

    :cond_11
    if-eqz p0, :cond_12

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UNKNOWN(0x%08x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string/jumbo v1, "|"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static greylist getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/app/Notification;->PLATFORM_STYLE_CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method private blacklist getRedatedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Notification;->isMatchPrivatePattern(Ljava/lang/String;)Z

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

.method private greylist-max-o hasLargeIcon()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

.method private synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 1

    if-ne p1, p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist normalizeBigText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeBigText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o priorityToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MAX"

    return-object v0

    :pswitch_1
    const-string v0, "HIGH"

    return-object v0

    :pswitch_2
    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_3
    const-string v0, "LOW"

    return-object v0

    :pswitch_4
    const-string v0, "MIN"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o readFromParcelImpl(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    :cond_0
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/app/Notification;->fixDuplicateExtras()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iput-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->parcelDataSize:I

    return-void
.end method

.method private greylist-max-o reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p3, :cond_0

    const v1, 0x10502f1

    goto :goto_0

    :cond_0
    const v1, 0x10502f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p3, :cond_1

    const v2, 0x10502ef

    goto :goto_1

    :cond_1
    const v2, 0x10502ee

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->reduceImageSizes(II)V

    :cond_2
    return-void
.end method

.method private static greylist-max-o removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 15

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    move-object v6, v5

    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    :cond_0
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v10

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v11, -0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v14

    goto :goto_1

    :cond_1
    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_3

    instance-of v7, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_1
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    return-object p0
.end method

.method public static greylist-max-o safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist scaleDownIfNecessaryForBigPicture(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, p1, :cond_2

    if-le v1, p2, :cond_2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    int-to-float v5, p2

    int-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_1

    :cond_1
    int-to-float v5, p1

    int-to-float v6, v0

    div-float/2addr v5, v6

    :goto_1
    int-to-float v4, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p0, v4, v6, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bigpicture scaling before["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]  after["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Notification"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method private static blacklist stripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o visibilityToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PUBLIC"

    return-object v0

    :pswitch_1
    const-string v0, "PRIVATE"

    return-object v0

    :pswitch_2
    const-string v0, "SECRET"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private greylist-max-o writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-class v1, Landroid/app/Notification;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_0

    const-string v2, ""

    iget v3, p0, Landroid/app/Notification;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v2, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v2, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v2, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_7
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget v2, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v2, p1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object v2, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v2, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget v2, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    iget v2, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-wide v4, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_e

    :cond_10
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object v2, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v2, :cond_11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, p1, v3}, Landroid/content/LocusId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    iget v2, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    iget v2, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v2, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v2, p1, v3}, Landroid/app/Notification$BubbleMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    iget-boolean v2, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v2, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->semFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v2, :cond_14

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    goto :goto_12

    :cond_14
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->parcelDataSize:I

    return-void
.end method


# virtual methods
.method public blacklist belongsToHeadlessSystemApp(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "Notification#belongsToHeadlessSystemApp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    nop

    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->mBelongsToHeadlessSystemApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_4
    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public whitelist clone()Landroid/app/Notification;
    .locals 2

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneInto(Landroid/app/Notification;Z)V
    .locals 4

    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iput-object v0, p1, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v0, p1, Landroid/app/Notification;->creationTime:J

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iget v0, p0, Landroid/app/Notification;->number:I

    iput v0, p1, Landroid/app/Notification;->number:I

    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_3
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_4
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v0, :cond_5

    array-length v1, v0

    new-array v2, v1, [J

    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget v1, p0, Landroid/app/Notification;->ledARGB:I

    iput v1, p1, Landroid/app/Notification;->ledARGB:I

    iget v1, p0, Landroid/app/Notification;->ledOnMS:I

    iput v1, p1, Landroid/app/Notification;->ledOnMS:I

    iget v1, p0, Landroid/app/Notification;->ledOffMS:I

    iput v1, p1, Landroid/app/Notification;->ledOffMS:I

    iget v1, p0, Landroid/app/Notification;->defaults:I

    iput v1, p1, Landroid/app/Notification;->defaults:I

    iget v1, p0, Landroid/app/Notification;->flags:I

    iput v1, p1, Landroid/app/Notification;->flags:I

    iget v1, p0, Landroid/app/Notification;->priority:I

    iput v1, p1, Landroid/app/Notification;->priority:I

    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not unparcel extras from notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    :cond_7
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_a
    if-eqz p2, :cond_b

    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_b
    iget v1, p0, Landroid/app/Notification;->visibility:I

    iput v1, p1, Landroid/app/Notification;->visibility:I

    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_c

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v2, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, v2, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    :cond_c
    iget v1, p0, Landroid/app/Notification;->color:I

    iput v1, p1, Landroid/app/Notification;->color:I

    iget-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iget-wide v1, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v1, p1, Landroid/app/Notification;->mTimeout:J

    iget-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iput-object v1, p1, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    iget v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v1, p1, Landroid/app/Notification;->mBadgeIcon:I

    iget-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    iput v1, p1, Landroid/app/Notification;->mFgsDeferBehavior:I

    iget-object v1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iput-object v1, p1, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    iget-boolean v1, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v1, p1, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    if-nez p2, :cond_d

    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    :cond_d
    iget v1, p0, Landroid/app/Notification;->semMissedCount:I

    iput v1, p1, Landroid/app/Notification;->semMissedCount:I

    iget v1, p0, Landroid/app/Notification;->semFlags:I

    iput v1, p1, Landroid/app/Notification;->semFlags:I

    iget v1, p0, Landroid/app/Notification;->semPriority:I

    iput v1, p1, Landroid/app/Notification;->semPriority:I

    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    :cond_e
    iget v1, p0, Landroid/app/Notification;->parcelDataSize:I

    iput v1, p1, Landroid/app/Notification;->parcelDataSize:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Notification;->getRedatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10500000003L

    iget v2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000004L

    iget v2, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10900000005L

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000006L

    iget-object v2, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000007L

    iget-object v2, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v2

    const-wide v4, 0x10500000008L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    iget v2, p0, Landroid/app/Notification;->visibility:I

    const/4 v4, -0x1

    if-lt v2, v4, :cond_2

    iget v2, p0, Landroid/app/Notification;->visibility:I

    if-gt v2, v3, :cond_2

    const-wide v2, 0x10e00000009L

    iget v4, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist findRemoteInputActionPair(Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/app/RemoteInput;",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-nez v11, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move-object v6, v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public whitelist getAllowSystemGeneratedContextualActions()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification;->mAllowSystemGeneratedContextualActions:Z

    return v0
.end method

.method public blacklist getAllowlistToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAppIcon()Landroid/graphics/drawable/Icon;
    .locals 5

    iget-object v0, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Notification"

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v1, :cond_1

    const-string v4, "Failed to get the app icon: no icon in application info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/Notification;->mAppIcon:Landroid/graphics/drawable/Icon;

    return-object v2

    :cond_2
    const-string v1, "Failed to get the app icon: there\'s an EXTRA_BUILDER_APPLICATION_INFO in extras but it\'s null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "Failed to get the app icon: no application info in extras"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public whitelist getBadgeIconType()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public whitelist getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object v0
.end method

.method public greylist getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContextualActions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupAlertBehavior()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public blacklist getHeaderAppIconRes(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public greylist-max-o getNotificationStyle()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSettingsText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public whitelist getTimeoutAfter()J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public blacklist getWhen()J
    .locals 4

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    return-wide v0
.end method

.method public blacklist hasAppProvidedWhen()Z
    .locals 4

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    iget-wide v2, p0, Landroid/app/Notification;->creationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasColorizedPermission()Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasCompletedProgress()Z
    .locals 4

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.progressMax"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v2
.end method

.method public whitelist hasImage()Z
    .locals 6

    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.messages"

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    nop

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBubbleNotification()Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isColorized()Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification;->hasColorizedPermission()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCustomNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isFgsOrUij()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isForegroundDisplayForceDeferred()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isForegroundService()Z
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isGroupChild()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isGroupSummary()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isMediaNotification()Z
    .locals 7

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.mediaSession"

    const-class v6, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public blacklist isStyle(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Notification$Style;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist isUserInitiatedJob()Z
    .locals 2

    iget v0, p0, Landroid/app/Notification;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-o lightenPayload()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v2, v3

    const-string v5, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/os/Parcelable;

    if-nez v6, :cond_1

    instance-of v6, v5, [Landroid/os/Parcelable;

    if-nez v6, :cond_1

    instance-of v6, v5, Landroid/util/SparseArray;

    if-nez v6, :cond_1

    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public blacklist loadHeaderAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string v0, "Notification#loadHeaderAppIcon"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "Notification"

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "Cannot load the app icon drawable with a null context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "Cannot load the app icon drawable: no application info"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public blacklist loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "android.substName"

    const-string v1, "Notification#loadHeaderAppName"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/app/Notification;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, v4

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public blacklist overrideAllowlistToken(Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.reduced.images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    if-eqz v0, :cond_2

    const v4, 0x1050337

    goto :goto_0

    :cond_2
    const v4, 0x1050336

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_3
    iget-object v2, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v4

    if-eqz v0, :cond_5

    const v5, 0x1050333

    goto :goto_1

    :cond_5
    const v5, 0x1050332

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_6
    iget-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v6, v5, v5}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    iget-object v2, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    iget-object v2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2, p1, v0}, Landroid/app/Notification;->reduceImageSizesForRemoteView(Landroid/widget/RemoteViews;Landroid/content/Context;Z)V

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist semDisableEdgeLighting()V
    .locals 1

    iget v0, p0, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/Notification;->semFlags:I

    return-void
.end method

.method public blacklist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void
.end method

.method public greylist setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    return-void
.end method

.method public greylist setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setTimeoutAfter(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-void
.end method

.method public blacklist shouldShowForegroundImmediately()Z
    .locals 4

    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/app/Notification;->mFgsDeferBehavior:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v2, "navigation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public blacklist shouldUseAppIcon()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->notificationsUseAppIconInRow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification;->belongsToHeadlessSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public greylist-max-o showsChronometer()Z
    .locals 6

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    const-string v1, "android.showChronometer"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o showsTime()Z
    .locals 6

    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    const-string v1, "android.showWhen"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o suppressAlertingDueToGrouping()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification;->getRedatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shortcut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    const-string v3, "default"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    const-string v1, " tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, " defaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Landroid/app/Notification;->defaultsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Landroid/app/Notification;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " color=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, " groupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, " sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_b

    const-string v1, " actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_c

    const-string v1, " publicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_d

    const-string v1, " locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, " semFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->semFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " semPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " semMissedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v1, :cond_e

    const-string v1, " semBadgeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.pictureIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.audioContents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.backgroundImageUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_8
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people.list"

    const-class v3, Landroid/app/Person;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    invoke-virtual {v3, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.remoteInputHistoryItems"

    const-class v4, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/RemoteInputHistoryItem;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_b

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.messagingUser"

    const-class v5, Landroid/app/Person;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    :cond_c
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.messages"

    const-class v6, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    nop

    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v6, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_d
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.messages.historic"

    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    nop

    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v7, p1}, Landroid/app/Notification$MessagingStyle$Message;->visitUris(Ljava/util/function/Consumer;)V

    goto :goto_5

    :cond_e
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.conversationIcon"

    const-class v8, Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v6}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.callPerson"

    const-class v8, Landroid/app/Person;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    if-eqz v6, :cond_f

    invoke-virtual {v6, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    :cond_f
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.verificationIcon"

    const-class v9, Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-static {p1, v7}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    :cond_10
    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/Notification;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->visitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    :cond_11
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    invoke-static {v0, p1}, Landroid/app/Notification$WearableExtender;->-$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V

    :cond_12
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/Notification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/Notification$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification;Landroid/os/Parcel;)V

    move-object v0, v1

    invoke-static {v0}, Landroid/app/PendingIntent;->addOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/app/Notification;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->hasClassCookie(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Landroid/app/Notification;

    iget-object v3, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    const-class v2, Landroid/app/Notification;

    iget-object v3, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    const-class v3, Landroid/app/Notification;

    iget-object v4, p0, Landroid/app/Notification;->mAllowlistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_4
    nop

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/app/PendingIntent;->removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_5
    throw v1
.end method
