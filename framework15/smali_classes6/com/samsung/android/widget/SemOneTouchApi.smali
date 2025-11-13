.class public Lcom/samsung/android/widget/SemOneTouchApi;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Lcom/samsung/android/widget/ISemTouchApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;,
        Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;,
        Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;,
        Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;,
        Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;,
        Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;
    }
.end annotation


# static fields
.field private static final blacklist BITMAP_AVAILABLE_SAMPLE_SIZE:I = 0x64

.field private static final blacklist BUNDLE_KEY_ACTIVITY_NAME:Ljava/lang/String; = "key_activity_name"

.field private static final blacklist BUNDLE_KEY_APP_PROCESS_NAME:Ljava/lang/String; = "key_app_process_name"

.field private static final blacklist BUNDLE_KEY_CUSTOM_CLIP_DATA:Ljava/lang/String; = "key_customized_clip_data"

.field private static final blacklist BUNDLE_KEY_CUSTOM_DRAG_SHADOW_WIDTH:Ljava/lang/String; = "key_custom_drag_shadow_width"

.field private static final blacklist BUNDLE_KEY_EVENT_TOOL_TYPE:Ljava/lang/String; = "key_event_tool_type"

.field private static final blacklist BUNDLE_KEY_LONG_PRESS_FLAG:Ljava/lang/String; = "key_long_press_flag"

.field private static final blacklist BUNDLE_KEY_LONG_PRESS_PHASE_TWO_CUSTOM_THRESHOLD:Ljava/lang/String; = "key_long_press_phase_two_custom_threshold"

.field private static final blacklist BUNDLE_KEY_PREVIOUS_LONG_PRESS_FLAG:Ljava/lang/String; = "key_previous_long_press_flag"

.field private static final blacklist BUNDLE_KEY_RAW_TOUCHED_POINT:Ljava/lang/String; = "key_raw_touched_point"

.field private static final blacklist BUNDLE_KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field private static final blacklist BUNDLE_KEY_RESULT_BOOLEAN:Ljava/lang/String; = "key_result_boolean"

.field private static final blacklist BUNDLE_KEY_SAVE_IMAGE_RESULT:Ljava/lang/String; = "key_save_img_result"

.field private static final blacklist BUNDLE_KEY_SKIP_DRAG_AND_DROP:Ljava/lang/String; = "key_skip_drag_and_drop"

.field private static final blacklist BUNDLE_KEY_TOUCHED_IMG_PFD:Ljava/lang/String; = "key_touched_img_pfd"

.field private static final blacklist BUNDLE_KEY_TOUCHED_POINT:Ljava/lang/String; = "key_touched_point"

.field private static final blacklist BUNDLE_KEY_TOUCHED_TEXT:Ljava/lang/String; = "key_touched_text"

.field private static final blacklist BUNDLE_KEY_TOUCHED_VIEW_SIZE:Ljava/lang/String; = "key_touched_view_size"

.field private static final blacklist BUNDLE_KEY_TOUCHED_WIDGET_ID:Ljava/lang/String; = "key_touched_widget_id"

.field private static final blacklist BUNDLE_KEY_TOUCHED_WIDGET_NAME:Ljava/lang/String; = "key_touched_widget_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_ClASS_NAME:Ljava/lang/String; = "key_video_view_class_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_FINDING_TOP_TO_DOWN:Ljava/lang/String; = "key_video_view_finding_top_to_down"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_ROOT_CLASS:Ljava/lang/String; = "key_video_view_root_calss_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_WIDGET_ID:Ljava/lang/String; = "key_video_view_widget_id"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_WIDGET_NAME:Ljava/lang/String; = "key_video_view_widget_name"

.field private static final blacklist BUNDLE_KEY_WINDOW_TYPE:Ljava/lang/String; = "key_window_type"

.field private static final blacklist CALL_METHOD_CUSTOM_VIDEO_CLASS_NAME:Ljava/lang/String; = "query_custom_video_class_name"

.field private static final blacklist CALL_METHOD_ON_LONG_PRESSED:Ljava/lang/String; = "method_on_long_pressed"

.field public static final blacklist COLUMN_CLASS_NAME:Ljava/lang/String; = "clazz"

.field public static final blacklist COLUMN_FIELD_LEVEL:Ljava/lang/String; = "level"

.field public static final blacklist COLUMN_FIELD_NAME:Ljava/lang/String; = "field"

.field public static final blacklist COLUMN_METHOD_NAME:Ljava/lang/String; = "method"

.field public static final blacklist COLUMN_VIEW_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist DEFAULT_CHECK_TOUCH_DOWN_DELAY_TIME:I = 0x64

.field private static final blacklist DEFAULT_LONG_PRESS_PHASE_ONE_THRESHOLD:I = 0x1b8

.field private static final blacklist DEFAULT_LONG_PRESS_PHASE_TWO_THRESHOLD:I = 0x32a

.field private static final blacklist DRAG_SHADOW_TEXT_VIEW_MAX_LENGTH:I = 0x64

.field private static final blacklist FOUND_TEXT_MAX_LENGTH:I = 0x7d0

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_CANCELLED:I = 0x3

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_COMPLETED:I = 0x4

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_PHASE_ONE:I = 0x1

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_PHASE_TWO:I = 0x2

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_START:I = 0x0

.field private static final blacklist LONG_PRESS_FLAG_SAVE_IMAGE_VIEW_FINISHED:I = 0x3e9

.field private static final blacklist OPEN_URI_SAVE_TOUCHED_IMG:Ljava/lang/String; = "uri_save_touched_img"

.field private static final blacklist OTCH_EXTERNAL_EVENT_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.onetouch.externalEvent"

.field private static final blacklist OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

.field public static final blacklist PACKAGE_NAME_ONE_TOUCH:Ljava/lang/String; = "com.samsung.android.onetouch"

.field private static final blacklist PACKAGE_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PROJECTION_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final blacklist PROJECTION_VERSION_CODE:Ljava/lang/String; = "ver"

.field private static final blacklist QUERY_FIND_VIEW_INFO:Ljava/lang/String; = "query_find_view_info"

.field private static final blacklist REFLECT_FIELD_LEVEL_SELF:I = 0x0

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER:I = 0x1

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER_SUPER:I = 0x2

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_ENABLE:Ljava/lang/String; = "otch_long_press_enabled_setting"

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_PHASE_ONE_THRESHOLD:Ljava/lang/String; = "otch_long_press_phase_one_threshold"

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_PHASE_TWO_THRESHOLD:Ljava/lang/String; = "otch_long_press_phase_two_threshold"

.field private static final blacklist TAG:Ljava/lang/String; = "OTCH$SemOneTouchApi"

.field private static final blacklist TOUCH_MOVE_MAX_MM:F = 3.0f

.field public static final blacklist VIEW_TYPE_BLOCK:Ljava/lang/String; = "view_type_block"

.field public static final blacklist VIEW_TYPE_IMAGE_VIEW:Ljava/lang/String; = "android.widget.ImageView"

.field public static final blacklist VIEW_TYPE_TEXT_VIEW:Ljava/lang/String; = "android.widget.TextView"


# instance fields
.field private blacklist mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

.field private blacklist mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsInitialized:Ljava/lang/Boolean;

.field private blacklist mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

.field private blacklist mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

.field private blacklist mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

.field private blacklist mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

.field private blacklist mOneTouchLongPressThreshold:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchEventMoveMaxPixel:I


# direct methods
.method public static synthetic blacklist $r8$lambda$OZHG1O4woHFbAiuortAYR69t35o(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->lambda$isBlocked$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sRRFVZBk_iN8Yywt7g1-isYt3SI(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->lambda$performDragAndDrop$2(Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearEventState(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindVideoView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBitmapFromImageView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromImageView(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFindVideoViewEventInfo(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getFindVideoViewEventInfo(Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTouchedView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getTouchedView(Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEventSuccess(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isEventSuccess(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isFingerPrintInDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSaveBitmapFileNeeded(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isSaveBitmapFileNeeded(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressCanceled(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressCompleted(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCompleted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformDragAndDrop(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/widget/SemOneTouchApi;->performDragAndDrop(Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputRootViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putRootViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputTouchedViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putTouchedViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputVideoViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putVideoViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveBitmapFile(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.onetouch.externalEvent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->isBlocked(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->updateSettingsValue(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->mm2px(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OTCH$SemOneTouchApi"

    const-string v2, "init failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base64ToBitmap fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTCH$SemOneTouchApi"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist checkFindViewInfoList(Landroid/view/View;Ljava/util/List;)Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;",
            ">;)",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    instance-of v4, v3, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetclassName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetclassName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private blacklist checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    move v0, v3

    return v0
.end method

.method private blacklist clearEventState()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->remove()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OTCH$SemOneTouchApi"

    const-string v2, "clearEventState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static blacklist dpToPx(I)I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private blacklist dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->setShadowViewLayout(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "draw"

    const-string v1, "OTCH$SemOneTouchApi"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->isBitmapAvailable(Landroid/graphics/Bitmap;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "draw fail"

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static blacklist drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "drawable2Bitmap, constantState null"

    invoke-static {v0, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v4, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move v5, v6

    :cond_4
    const/4 v6, 0x0

    if-lez v4, :cond_8

    if-gtz v5, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :cond_6
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v6, :cond_7

    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    goto :goto_2

    :cond_8
    :goto_1
    const-string v7, "drawable2Bitmap fail"

    invoke-static {v0, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable2Bitmap fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method

.method private blacklist findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p3, :cond_4

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/SurfaceView;

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/view/TextureView;

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v3

    nop

    :cond_3
    :goto_2
    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/SurfaceView;

    if-nez v4, :cond_7

    instance-of v4, v3, Landroid/view/TextureView;

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-direct {p0, v4, p2, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    move-object v0, v3

    nop

    :cond_8
    :goto_5
    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "OTCH$SemOneTouchApi"

    const-string v3, "findVideoView failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-object v0
.end method

.method private blacklist getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppVersionCode fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OTCH$SemOneTouchApi"

    invoke-static {v4, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method private blacklist getBitmapFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "pfd null"

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x168

    invoke-virtual {p0, p1, v3, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->calculateInSampleSize(Landroid/os/ParcelFileDescriptor;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "getBitmapFromFile failed, abandon SaveBitmapFile"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private blacklist getBitmapFromImageView(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapFromView fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTCH$SemOneTouchApi"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private blacklist getBitmapFromView(Landroid/view/View;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapFromView failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTCH$SemOneTouchApi"

    invoke-static {v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;
    .locals 6

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi;->dpToPx(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v3, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    iget v3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    return-object v0
.end method

.method private blacklist getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x1090186

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi;->dpToPx(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    return-object v0
.end method

.method private blacklist getFindVideoViewEventInfo(Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;
    .locals 6

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    const-string v5, "query_custom_video_class_name"

    invoke-virtual {v3, v4, v5, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOnLongPressedEvent fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v4, "sendOnLongPressedEvent fail, result null"

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    const-string v4, "key_video_view_finding_top_to_down"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "key_video_view_class_name"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method private blacklist getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;
    .locals 7

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetmethodName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetmethodName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldLevel(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    nop

    :goto_0
    if-nez v4, :cond_1

    const-string v5, "getFiled null"

    invoke-static {v0, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    if-nez v3, :cond_3

    const-string v4, "get Object null"

    invoke-static {v0, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFiledObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 9

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    instance-of v2, p2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x7d0

    if-eqz v2, :cond_6

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v5, v6, :cond_2

    if-ltz v5, :cond_2

    if-lez v6, :cond_2

    sub-int v3, v6, v5

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    add-int/lit8 v6, v5, 0x64

    :cond_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    if-ne v7, v1, :cond_3

    add-int/lit8 v7, v1, -0x1

    :cond_3
    if-ge v1, v4, :cond_4

    move-object v3, v0

    goto :goto_0

    :cond_4
    const/16 v8, 0x3e8

    if-ge v7, v8, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    add-int/lit16 v3, v7, -0x3e8

    add-int/lit16 v4, v7, 0x3e8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    goto :goto_1

    :cond_6
    if-gt v1, v4, :cond_7

    move-object v3, v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method private blacklist getTouchedView(Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3, p0}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private blacklist getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p3, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v2, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v2, p3, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "getViewContentInternal draw Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p3, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->checkFindViewInfoList(Landroid/view/View;Ljava/util/List;)Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findViewInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetviewType(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_5
    goto :goto_2

    :sswitch_0
    const-string v3, "android.widget.TextView"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_1
    const-string v6, "android.widget.ImageView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :sswitch_2
    const-string v3, "view_type_block"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "block: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    invoke-direct {p0, p3, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromView(Landroid/view/View;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p3, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v3, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_6
    return-object v1

    :cond_7
    goto :goto_4

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getViewContentInternal failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4414aade -> :sswitch_2
        0x27fd74f5 -> :sswitch_1
        0x5bce347d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isBlocked(Landroid/content/Context;Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "com.samsung.android.onetouch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isEventSuccess(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "call One Touch error, bundle null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "key_result_boolean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isFingerPrintInDisplay(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "fingerprint"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    move v2, v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    :cond_1
    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    move v0, v4

    :cond_2
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static blacklist isOneTouchSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_ONE_TOUCH:Z

    return v0
.end method

.method private blacklist isSaveBitmapFileNeeded(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    return v0
.end method

.method static synthetic blacklist lambda$dragWithCustomShadowView$1(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 3

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    const/16 v2, 0x300

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    invoke-interface {p3, v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$isBlocked$0(Landroid/view/View;)V
    .locals 3

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_0

    const-string v2, "FLAG_SECURE, blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "isBlocked failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$performDragAndDrop$2(Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;I)V

    const/16 v1, 0x300

    invoke-virtual {p1, p2, v0, p1, v1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    invoke-interface {p4, v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void
.end method

.method private blacklist mm2px(Landroid/content/Context;F)F
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const v1, 0x41cb3333    # 25.4f

    div-float v1, p2, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private blacklist onLongPressCanceled(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_previous_long_press_flag"

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist onLongPressCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    return-void
.end method

.method private blacklist onLongPressError()V
    .locals 2

    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "onLongPressError"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return-void
.end method

.method private blacklist onLongPressStart(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPressStart state error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", replace LongPressEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTCH$SemOneTouchApi"

    invoke-static {v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    :cond_0
    new-instance v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;-><init>(JILandroid/view/MotionEvent;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    invoke-direct {v2, p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p3, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    const-wide/16 v3, 0x64

    invoke-virtual {p3, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private blacklist parseActivity(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    move-object p1, v1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OTCH$SemOneTouchApi"

    const-string v3, "parseActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private blacklist performDragAndDrop(Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    if-nez v12, :cond_4

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_0

    move-object/from16 v6, p7

    goto :goto_1

    :cond_0
    const-string v3, "text/*"

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1, v11, v9}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {v7, v1, v10, v13, v15}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, p7

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_2

    move-object/from16 v6, p7

    :try_start_3
    invoke-direct {v7, v6}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v7, v8, v1, v11, v9}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v7, v3, v10, v13, v15}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    goto :goto_0

    :cond_2
    move-object/from16 v6, p7

    invoke-interface {v15, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    :goto_0
    goto :goto_2

    :cond_3
    move-object/from16 v6, p7

    :goto_1
    invoke-interface {v15, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void

    :catch_0
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_3

    :cond_4
    move-object/from16 v6, p7

    instance-of v0, v14, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1, v11, v9}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {v7, v1, v10, v13, v15}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    goto :goto_2

    :cond_5
    instance-of v0, v14, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    move-object v0, v14

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v0, v11, v9}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v7, v1, v10, v13, v15}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p2

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    const-string v1, "OTCH$SemOneTouchApi"

    const-string v2, "dragTouchedView failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private blacklist putRootViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 4

    :try_start_0
    const-string v0, "key_raw_touched_point"

    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedRawPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_app_process_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->parseActivity(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_activity_name"

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    const-string v2, "key_window_type"

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putRootViewInfoToBundle fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTCH$SemOneTouchApi"

    invoke-static {v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist putTouchedViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "OTCH$SemOneTouchApi"

    if-nez p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    move-object v1, p4

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "key_touched_text"

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "key_touched_widget_name"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_touched_view_size"

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "key_touched_widget_id"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putTouchedViewInfoToBundle fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private blacklist putVideoViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V
    .locals 8

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p4, Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "key_video_view_root_calss_name"

    if-eqz v2, :cond_0

    :try_start_1
    const-class v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v2, p4, Landroid/view/TextureView;

    if-eqz v2, :cond_3

    move-object v2, p4

    check-cast v2, Landroid/view/TextureView;

    const-wide/16 v4, -0x1

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    move-wide v4, v6

    :cond_1
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VideoView: Found TextureView but consider not a video view, class: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " timestamp: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-class v6, Landroid/view/TextureView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v2, "key_video_view_widget_name"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const-string v2, "key_video_view_widget_id"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putVideoViewInfoToBundle fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static blacklist pxToDp(I)I
    .locals 2

    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 7

    const-string v0, "OTCH$SemOneTouchApi"

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.samsung.android.onetouch.externalEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uri_save_touched_img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/high16 v5, 0x30000000

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :try_start_1
    const-string v4, "openFile fail"

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v2

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapFile fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private blacklist sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    if-nez p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    :cond_0
    const-string v0, "key_request_code"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_long_press_flag"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_event_tool_type"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventToolType(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    const-string v3, "method_on_long_pressed"

    invoke-virtual {v1, v2, v3, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOnLongPressedEvent fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTCH$SemOneTouchApi"

    invoke-static {v3, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist setShadowViewLayout(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public blacklist calculateInSampleSize(Landroid/os/ParcelFileDescriptor;II)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, p3, :cond_0

    if-le v2, p2, :cond_1

    :cond_0
    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    :goto_0
    div-int v6, v4, v0

    if-lt v6, p3, :cond_1

    div-int v6, v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v6, p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OTCH$SemOneTouchApi"

    const-string v3, "calculateInSampleSize failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public blacklist dispatchTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressStart(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return v1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    nop

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist getViewContent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Z
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/widget/SemOneTouchApi;->getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v1, v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isBitmapAvailable(Landroid/graphics/Bitmap;I)Z
    .locals 16

    move-object/from16 v1, p1

    const-string v2, "OTCH$SemOneTouchApi"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    :goto_0
    move/from16 v10, p2

    if-ge v9, v10, :cond_1

    :try_start_1
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    if-eq v13, v7, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "available: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unavailable: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v10, p2

    :goto_1
    const-string v4, "isBitmapAvailable failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v3
.end method

.method public blacklist onCleared(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method blacklist queryFindViewInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    const-string v0, "pkg"

    const-string v2, "ver"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "content://com.samsung.android.onetouch.externalEvent/query_find_view_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string v0, "clazz"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    const-string v8, "type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v6, :cond_2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const-string v9, "android.widget.TextView"

    :goto_1
    move-object v14, v9

    const-string v9, "field"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_3

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    const-string v12, "level"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v6, :cond_4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v4, "method"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    new-instance v6, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    move/from16 v18, v12

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_6

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v4

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOnLongPressedEvent fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OTCH$SemOneTouchApi"

    invoke-static {v4, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-object v1
.end method

.method public blacklist updateSettingsValue(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_ONE_TOUCH:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "otch_long_press_enabled_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "otch_long_press_phase_one_threshold"

    const/16 v3, 0x1b8

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "otch_long_press_phase_two_threshold"

    const/16 v4, 0x32a

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OTCH$SemOneTouchApi"

    const-string v2, "updateSettingsValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
