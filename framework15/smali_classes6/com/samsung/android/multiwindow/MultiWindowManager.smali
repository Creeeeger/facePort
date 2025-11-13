.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$MultiSplitFlags;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$AssistantHotKeyMode;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$SplitFeasibleMode;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeFreeformStashMode;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$embedActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ForceHidingTransit;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformCaptionType;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionFlags;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_AUTORUN_FLEX_PANEL:Ljava/lang/String; = "android.intent.action.AUTORUN_FLEX_PANEL"

.field public static final blacklist ACTION_COLLAPSE_FLEX_PANEL:Ljava/lang/String; = "android.intent.action.COLLAPSE_FLEX_PANEL"

.field public static final blacklist ACTION_ENTER_CONTENTS_TO_WINDOW:Ljava/lang/String; = "com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW"

.field public static final blacklist ACTION_EXPAND_FLEX_PANEL:Ljava/lang/String; = "android.intent.action.EXPAND_FLEX_PANEL"

.field public static final blacklist ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field public static final blacklist ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field public static final blacklist ACTION_MULTI_WINDOW_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

.field public static final blacklist ASSISTANT_HOT_KEY_MODE_FREEFORM:I = 0x3

.field public static final blacklist ASSISTANT_HOT_KEY_MODE_FULL:I = 0x1

.field public static final blacklist ASSISTANT_HOT_KEY_MODE_SPLIT:I = 0x2

.field public static final blacklist CHANGE_FREEFORM_STASH_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FREEFORM_STASH_NONE_FOCUSABLE:I = 0x2

.field public static final blacklist CHANGE_FREEFORM_STASH_UNDEFINED:I = 0x0

.field public static final blacklist CHANGE_TRANSIT_FLAG_FORCE_COLLECT:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_FLAG_USE_FLOATING_LAYER:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_MODE_DISMISS:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_MODE_FREEFORM_CAPTION_TYPE_CHANGE:I = 0x3

.field public static final blacklist CHANGE_TRANSIT_MODE_MOVE_BACK_IN_SPLIT_SCREEN:I = 0x6

.field public static final blacklist CHANGE_TRANSIT_MODE_NATURAL_SWITCHING:I = 0x4

.field public static final blacklist CHANGE_TRANSIT_MODE_NEW_DEX_CAPTION_TYPE_CHANGE:I = 0x7

.field public static final blacklist CHANGE_TRANSIT_MODE_POP_OVER:I = 0x5

.field public static final blacklist CHANGE_TRANSIT_MODE_SPLIT_ACTIVITY:I = 0x8

.field public static final blacklist CHANGE_TRANSIT_MODE_STANDARD:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_MODE_UNDEFINED:I = 0x0

.field public static final blacklist DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_DISABLED:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_UNDEFINED:I = 0x0

.field public static final blacklist EXTRA_AI_HOT_KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "ai_hot_key_launch_bounds"

.field public static final blacklist EXTRA_AI_HOT_KEY_LAUNCH_FREEFORM:Ljava/lang/String; = "ai_hot_key_launch_freeform"

.field public static final blacklist EXTRA_AI_LAUNCH_MODE:Ljava/lang/String; = "ai_launch_mode"

.field public static final blacklist EXTRA_AI_LAUNCH_SPLIT_RATIO:Ljava/lang/String; = "ai_launch_split_ratio"

.field public static final blacklist EXTRA_IN_MULTI_WINDOW_MODE:Ljava/lang/String; = "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED_USER_ID:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLE_REQUESTER:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

.field public static final blacklist FLEX_MODE_PANEL_ENABLED:Ljava/lang/String; = "flex_mode_panel_enabled"

.field public static final blacklist FORCE_HIDING_TRANSIT_ENTER:I = 0x1

.field public static final blacklist FORCE_HIDING_TRANSIT_ENTER_WITHOUT_ANIMATION:I = 0x3

.field public static final blacklist FORCE_HIDING_TRANSIT_EXIT:I = 0x2

.field public static final blacklist FORCE_HIDING_TRANSIT_EXIT_WITHOUT_ANIMATION:I = 0x4

.field public static final blacklist FORCE_HIDING_TRANSIT_UNDEFINED:I = 0x0

.field public static final blacklist FREEFORM_CAPTION_TYPE_BAR:I = 0x1

.field public static final blacklist FREEFORM_CAPTION_TYPE_HANDLE:I = 0x0

.field public static final blacklist FREEFORM_CAPTION_TYPE_UNDEFINED:I = -0x1

.field public static final blacklist FREEFORM_CORNER_RADIUS_IN_DP:I = 0xe

.field public static final blacklist FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final blacklist FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final blacklist FREEFORM_TRANSIT_RESTORE:I = 0x2

.field private static final blacklist IMultiTaskingBinderSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/multiwindow/IMultiTaskingBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_POSITION:I = -0x1

.field public static final blacklist LAUNCH_OVER_FOCUSED_TASK_ID:I = -0x2710

.field private static final blacklist META_MASK:J = 0x1000000000000L

.field public static final blacklist MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final blacklist MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final blacklist MULTIWINDOW_MODE_PINNED:I = 0x4

.field public static final blacklist MULTIWINDOW_MODE_SPLIT_SCREEN:I = 0x2

.field public static final blacklist MULTI_SPLIT_BOTTOM_SIDE:I = 0x400

.field public static final blacklist MULTI_SPLIT_DOCK_SIDE_MASK:I = 0x7c0

.field public static final blacklist MULTI_SPLIT_FEASIBLE:I = 0x2

.field public static final blacklist MULTI_SPLIT_INVALID_SIDE:I = 0x40

.field public static final blacklist MULTI_SPLIT_LEFT_SIDE:I = 0x80

.field public static final blacklist MULTI_SPLIT_MODE_MASK:I = 0x38

.field public static final blacklist MULTI_SPLIT_NONE_SPLIT:I = 0x8

.field public static final blacklist MULTI_SPLIT_NOT_SUPPORT:I = 0x2

.field public static final blacklist MULTI_SPLIT_NOT_SUPPORT_BY_HOME:I = 0x4

.field public static final blacklist MULTI_SPLIT_RIGHT_SIDE:I = 0x200

.field public static final blacklist MULTI_SPLIT_SUPPORT:I = 0x1

.field public static final blacklist MULTI_SPLIT_THREE_SPLIT:I = 0x20

.field public static final blacklist MULTI_SPLIT_TOP_SIDE:I = 0x100

.field public static final blacklist MULTI_SPLIT_TWO_SPLIT:I = 0x10

.field public static final blacklist MW_MINIMIZE_ANIMATION_DURATION:I = 0xfa

.field public static final blacklist MW_NEW_DEX_MINIMIZE_ANIMATION_DURATION:I = 0x1c2

.field public static final blacklist NATURAL_SWITCHING_SUPPORT:I = 0x800

.field public static final blacklist OUT_OF_SCREEN_POSITION:I = -0x2

.field public static final blacklist PERMISSION_MULTI_WINDOW_MONITOR:Ljava/lang/String; = "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

.field public static final blacklist RESIZE_HANDLE_FOR_POINTER_WIDTH_IN_DP:I = 0xa

.field public static final blacklist RESIZE_HANDLE_INNER_WIDTH_IN_DP:I = 0x4

.field public static final blacklist RESIZE_HANDLE_WIDTH_IN_PX:I = 0x30

.field public static final blacklist SC_DOCK_LEFT:J = 0x1000000000047L

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_BLOCKED:I = 0x2

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_DISABLED:I = 0x0

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist SPLIT_FEASIBLE:I = 0x1

.field public static final blacklist SPLIT_FEASIBLE_UNDEFINED:I = -0x1

.field public static final blacklist SPLIT_NOT_FEASIBLE:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final blacklist TYPE_LONG_PRESS:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist changeFreeformStashModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CHANGE_FREEFORM_STASH_NONE_FOCUSABLE"

    return-object v0

    :pswitch_1
    const-string v0, "CHANGE_FREEFORM_STASH_FOCUSABLE"

    return-object v0

    :pswitch_2
    const-string v0, "CHANGE_FREEFORM_STASH_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist changeTransitModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CHANGE_TRANSIT_MODE_SPLIT_ACTIVITY"

    return-object v0

    :pswitch_1
    const-string v0, "CHANGE_TRANSIT_MODE_NEW_DEX_CAPTION_TYPE_CHANGE"

    return-object v0

    :pswitch_2
    const-string v0, "CHANGE_TRANSIT_MODE_MOVE_BACK_IN_SPLIT_SCREEN"

    return-object v0

    :pswitch_3
    const-string v0, "CHANGE_TRANSIT_MODE_POP_OVER"

    return-object v0

    :pswitch_4
    const-string v0, "CHANGE_TRANSIT_MODE_NATURAL_SWITCHING"

    return-object v0

    :pswitch_5
    const-string v0, "CHANGE_TRANSIT_MODE_FREEFORM_CAPTION_TYPE_CHANGE"

    return-object v0

    :pswitch_6
    const-string v0, "CHANGE_TRANSIT_MODE_DISMISS"

    return-object v0

    :pswitch_7
    const-string v0, "CHANGE_TRANSIT_MODE_STANDARD"

    return-object v0

    :pswitch_8
    const-string v0, "CHANGE_TRANSIT_MODE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist createModeToDockSide(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist embedActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "EMBED_ACTIVITY_PACKAGE_DISABLED"

    return-object v0

    :pswitch_1
    const-string v0, "EMBED_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    :pswitch_2
    const-string v0, "EMBED_ACTIVITY_PACKAGE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist forceHidingTransitToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FORCE_HIDING_TRANSIT_EXIT_WITHOUT_ANIMATION"

    return-object v0

    :pswitch_1
    const-string v0, "FORCE_HIDING_TRANSIT_ENTER_WITHOUT_ANIMATION"

    return-object v0

    :pswitch_2
    const-string v0, "FORCE_HIDING_TRANSIT_EXIT"

    return-object v0

    :pswitch_3
    const-string v0, "FORCE_HIDING_TRANSIT_ENTER"

    return-object v0

    :pswitch_4
    const-string v0, "FORCE_HIDING_TRANSIT_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist freeformCaptionTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CAPTION_TYPE_BAR"

    return-object v0

    :pswitch_1
    const-string v0, "CAPTION_TYPE_HANDLE"

    return-object v0

    :pswitch_2
    const-string v0, "CAPTION_TYPE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public static blacklist isCaptionTypeBar(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isCaptionTypeHandle(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist multiSplitFlagsToDockSide(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x7c0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x4

    return v0

    :sswitch_1
    const/4 v0, 0x3

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist multiSplitFlagsToString(I)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, " MULTI_SPLIT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT_BY_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, " MULTI_SPLIT_NONE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, " MULTI_SPLIT_TWO_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, " MULTI_SPLIT_THREE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, " MULTI_SPLIT_INVALID_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, " MULTI_SPLIT_LEFT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, " MULTI_SPLIT_TOP_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, " MULTI_SPLIT_RIGHT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, " MULTI_SPLIT_BOTTOM_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    return-object v0
.end method

.method public static blacklist splitActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_BLOCKED"

    return-object v0

    :pswitch_1
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    :pswitch_2
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_DISABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist stringToFreeformCaptionType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "CAPTION_TYPE_HANDLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "CAPTION_TYPE_BAR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist warningException(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warningException() : caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist calculateMaxWidth(III)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->calculateMaxWidth(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    return p3
.end method

.method public blacklist changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist clearAllDockingTasks(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->clearAllDockingTasks(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist dismissSplitTask(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->dismissSplitTask(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist exitMultiWindow(Landroid/os/IBinder;Z)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishNaturalSwitching()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->finishNaturalSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist getAllowedMultiWindowPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFreeformContainerPoint()Landroid/graphics/PointF;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getFreeformContainerPoint()Landroid/graphics/PointF;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMWDisableRequesters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiSplitFlags()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiWindowBlockListApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMultiWindowModeStates(I)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiWindowModeStates(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSplitActivityAllowPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportEmbedActivityPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    return v1
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVisibleTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasMinimizedToggleTasks()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->hasMinimizedToggleTasks()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist isAllTasksResizable(III)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllTasksResizable(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllowedMultiWindowPackage(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCornerGestureRunning()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isCornerGestureRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDismissedFlexPanelMode()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isDismissedFlexPanelMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isFlexPanelRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiWindowBlockListApp(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSplitImmersiveModeEnabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isSplitImmersiveModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVisibleTaskByTaskIdInDexDisplay(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeAllTasks(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeAllTasks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeAllTasksByRecents(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeAllTasksByRecents(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskById(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskById(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskToSpecificPosition(IZII)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskToSpecificPosition(IZII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyDragSplitAppIconHasDrawable(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyDragSplitAppIconHasDrawable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist preventNaturalSwitching(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->preventNaturalSwitching(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist registerDexTransientDelayListener(Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerDexTransientDelayListener(Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist removeFocusedTask(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->removeFocusedTask(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist rotateDexCompatTask(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->rotateDexCompatTask(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist saveFreeformBounds(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->saveFreeformBounds(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setBlockedMinimizeFreeformEnable(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setBlockedMinimizeFreeformEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setBoostFreeformTaskLayer(IZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setBoostFreeformTaskLayer(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setCandidateTask(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCandidateTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setCornerGestureEnabledWithSettings(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCornerGestureEnabledWithSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setCustomDensityEnabled(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCustomDensityEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setEnsureLaunchSplitEnabled(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setEnsureLaunchSplitEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setMaxVisibleFreeformCountForDex(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMaxVisibleFreeformCountForDex(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public blacklist setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setNaviBarImmersiveModeLocked(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setNaviStarSplitImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setSplitImmersiveMode(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setStayFocusActivityEnabled(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setStayFocusActivityEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setStayFocusAndTopResumedActivityEnabled(ZZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setStayFocusAndTopResumedActivityEnabled(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist shouldDeferEnterSplit(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->shouldDeferEnterSplit(Ljava/util/List;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startAssistantActivityToSplit(Landroid/content/Intent;F)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startAssistantActivityToSplit(Landroid/content/Intent;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportMultiSplitAppMinimumSize()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->supportMultiSplitAppMinimumSize()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsMultiWindow(Landroid/os/IBinder;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleFreeformForDexCompatApp(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->toggleFreeformForDexCompatApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist toggleFreeformWindowingMode()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->toggleFreeformWindowingMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist updateMultiSplitAppMinimumSize()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->updateMultiSplitAppMinimumSize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
