.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$MultiSplitFlags;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$DexHelp;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$embedActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ENTER_CONTENTS_TO_WINDOW:Ljava/lang/String; = "com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW"

.field public static final blacklist ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field public static final blacklist ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field public static final blacklist ACTION_MULTI_WINDOW_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

.field public static final blacklist BUNDLE_TASK_REMOVED:Ljava/lang/String; = "bundle_task_removed"

.field public static final blacklist CHANGE_TRANSIT_MODE_BY_FREEFORM_HEADER_TYPE_CHANGE:I = 0x5

.field public static final blacklist CHANGE_TRANSIT_MODE_BY_NATURAL_SWITCHING:I = 0x4

.field public static final blacklist CHANGE_TRANSIT_MODE_DISMISS:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_MODE_FREEFORM_WINDOWING_MODE_CHANGE:I = 0x3

.field public static final blacklist CHANGE_TRANSIT_MODE_STANDARD:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_MODE_THUMBNAIL_ONLY:I = 0x6

.field public static final blacklist CHANGE_TRANSIT_MODE_UNDEFINED:I = 0x0

.field public static final blacklist DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final blacklist DEX_HELP_NONE:I = 0x0

.field public static final blacklist DEX_HELP_NON_RESIZEABLE_RESTART:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_DISABLED:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_UNDEFINED:I = 0x0

.field public static final blacklist EXCLUSION_AREA_FROM_DIM_BOUNDS_DP:I = 0x7

.field public static final blacklist EXTRA_IN_MULTI_WINDOW_MODE:Ljava/lang/String; = "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED_USER_ID:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLE_REQUESTER:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

.field public static final blacklist FREEFORM_HEADER_TYPE_BAR:I = 0x1

.field public static final blacklist FREEFORM_HEADER_TYPE_HANDLER:I = 0x0

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

.field public static final blacklist NATURAL_SWITCHING_SUPPORT:I = 0x800

.field public static final blacklist PERMISSION_MULTI_WINDOW_MONITOR:Ljava/lang/String; = "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

.field public static final blacklist POPUP_VIEW_HANDLE_TOUCH_AREA_DP:I = 0x19

.field public static final blacklist POPUP_VIEW_WINDOW_SIZE_TOUCH_AREA_DP:I = 0xc

.field public static final blacklist RESIZE_HANDLE_FOR_POINTER_WIDTH_IN_DP:I = 0xa

.field public static final blacklist RESIZE_HANDLE_WIDTH_IN_PX:I = 0x30

.field public static final blacklist RESIZE_INSIDE_OVERLAP_AREA_IN_DP:I = 0x4

.field public static final blacklist RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final blacklist SC_DOCK_LEFT:J = 0x1000000000047L

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_BLOCKED:I = 0x2

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_DISABLED:I = 0x0

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final blacklist TYPE_LONG_PRESS:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 321
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method

.method public static blacklist changeTransitModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "changeTransitMode"    # I

    .line 119
    packed-switch p0, :pswitch_data_0

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_0
    const-string v0, "CHANGE_TRANSIT_MODE_THUMBNAIL_ONLY"

    return-object v0

    .line 131
    :pswitch_1
    const-string v0, "CHANGE_TRANSIT_MODE_BY_FREEFORM_HEADER_TYPE_CHANGE"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "CHANGE_TRANSIT_MODE_BY_NATURAL_SWITCHING"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "CHANGE_TRANSIT_MODE_FREEFORM_WINDOWING_MODE_CHANGE"

    return-object v0

    .line 125
    :pswitch_4
    const-string v0, "CHANGE_TRANSIT_MODE_DISMISS"

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "CHANGE_TRANSIT_MODE_STANDARD"

    return-object v0

    .line 121
    :pswitch_6
    const-string v0, "CHANGE_TRANSIT_MODE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToMultiSplitMode(I)I
    .locals 1
    .param p0, "number"    # I

    .line 859
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 860
    const/16 v0, 0x10

    return v0

    .line 862
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 863
    const/16 v0, 0x20

    return v0

    .line 865
    :cond_1
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist createModeToDockSide(I)I
    .locals 1
    .param p0, "createMode"    # I

    .line 869
    packed-switch p0, :pswitch_data_0

    .line 879
    const/4 v0, -0x1

    return v0

    .line 873
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 877
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 871
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 875
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

.method public static blacklist dockSideToMultiSplitFlag(I)I
    .locals 1
    .param p0, "dockSide"    # I

    .line 891
    packed-switch p0, :pswitch_data_0

    .line 901
    const/16 v0, 0x40

    return v0

    .line 899
    :pswitch_0
    const/16 v0, 0x400

    return v0

    .line 897
    :pswitch_1
    const/16 v0, 0x200

    return v0

    .line 895
    :pswitch_2
    const/16 v0, 0x100

    return v0

    .line 893
    :pswitch_3
    const/16 v0, 0x80

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist embedActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 276
    packed-switch p0, :pswitch_data_0

    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_0
    const-string v0, "EMBED_ACTIVITY_PACKAGE_DISABLED"

    return-object v0

    .line 280
    :pswitch_1
    const-string v0, "EMBED_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    .line 278
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

.method private static blacklist getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 1

    .line 334
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    .line 314
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 317
    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public static blacklist multiSplitFlagsToDockSide(I)I
    .locals 1
    .param p0, "flags"    # I

    .line 906
    and-int/lit16 v0, p0, 0x7c0

    sparse-switch v0, :sswitch_data_0

    .line 916
    const/4 v0, -0x1

    return v0

    .line 914
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 912
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 910
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 908
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
    .param p0, "flags"    # I

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, " MULTI_SPLIT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 923
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 924
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT_BY_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_2
    :goto_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, " MULTI_SPLIT_NONE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 926
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, " MULTI_SPLIT_TWO_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 927
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, " MULTI_SPLIT_THREE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_5
    :goto_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, " MULTI_SPLIT_INVALID_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 929
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, " MULTI_SPLIT_LEFT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 930
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, " MULTI_SPLIT_TOP_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 931
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, " MULTI_SPLIT_RIGHT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 932
    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, " MULTI_SPLIT_BOTTOM_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_a
    :goto_2
    return-object v0
.end method

.method public static blacklist splitActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 239
    packed-switch p0, :pswitch_data_0

    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_0
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_BLOCKED"

    return-object v0

    .line 243
    :pswitch_1
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    .line 241
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

.method private static blacklist warningException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 338
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warningException() : caller="

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

    .line 343
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist changeSplitLayoutByNaturalSwitching(IIIILandroid/graphics/Rect;FFZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "toWindowingMode"    # I
    .param p3, "toPosition"    # I
    .param p4, "splitCreateMode"    # I
    .param p5, "dropBounds"    # Landroid/graphics/Rect;
    .param p6, "dividerRatio"    # F
    .param p7, "cellDividerRatio"    # F
    .param p8, "reparentCell"    # Z

    .line 563
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 564
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 565
    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 566
    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setSplitPosition(I)V

    .line 567
    invoke-virtual {v0, p8}, Landroid/app/ActivityOptions;->setReparentCell(Z)V

    .line 574
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p1, v2, p5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->changeSplitLayoutByNaturalSwitching(ILandroid/os/Bundle;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "options":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 578
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1419
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    goto :goto_0

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1423
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist disableDividerPanelFirstAutoOpen()V
    .locals 1

    .line 1121
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->disableDividerPanelFirstAutoOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist disableNonResizeableAppRestartDialog()V
    .locals 1

    .line 1389
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->disableNonResizeableAppRestartDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1393
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist dismissSplitTask(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "homeBehindTopTask"    # Z

    .line 1060
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->dismissSplitTask(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1064
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 947
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist enterSplitScreenTopActivity()V
    .locals 1

    .line 979
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->enterSplitScreenTopActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 983
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist exitMultiWindow(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "checkPermission"    # Z

    .line 644
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishNaturalSwitching()V
    .locals 1

    .line 545
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->finishNaturalSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 603
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCornerGestureCustomValue()I
    .locals 1

    .line 1242
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getCornerGestureCustomValue()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1246
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 806
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1351
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFreeformAlpha(Landroid/os/IBinder;)F
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1110
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1114
    .end local v0    # "e":Landroid/os/RemoteException;
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .locals 1

    .line 412
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFreeformHeaderType()I
    .locals 1

    .line 1093
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    return v0
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

    .line 474
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

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 422
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

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .locals 1

    .line 938
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiSplitFlags()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 942
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 632
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

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 636
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMultiWindowModeStates(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 666
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiWindowModeStates(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 671
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 592
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 1296
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1300
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1316
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 1378
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1382
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 744
    if-nez p1, :cond_0

    .line 745
    const/4 v0, 0x0

    return v0

    .line 748
    :cond_0
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 749
    .local v0, "resizeMode":I
    const/4 v1, 0x0

    .line 752
    .local v1, "supportedModes":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 755
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    const/4 v1, 0x3

    .line 759
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 760
    or-int/lit8 v1, v1, 0x4

    .line 763
    :cond_2
    return v1
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 728
    if-nez p1, :cond_0

    .line 729
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .locals 1
    .param p1, "taskId"    # I

    .line 518
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1261
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1265
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

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

    .line 462
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

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasMinimizedToggleTasks()Z
    .locals 1

    .line 435
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->hasMinimizedToggleTasks()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideInputMethod(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 495
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->hideInputMethod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist injectBackEventForDex(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 1452
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->injectBackEventForDex(Landroid/os/IBinder;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1456
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllTasksResizable(III)Z
    .locals 1
    .param p1, "taskId1"    # I
    .param p2, "taskId2"    # I
    .param p3, "taskId3"    # I

    .line 1463
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllTasksResizable(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1467
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllowedMultiWindowPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 612
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDisabledNonResizeableAppRestartDialog()Z
    .locals 1

    .line 1397
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isDisabledNonResizeableAppRestartDialog()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1401
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .locals 1

    .line 1051
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isFlexPanelRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1055
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiWindowBlockListApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 623
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSplitImmersiveModeEnabled()Z
    .locals 1

    .line 1176
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isSplitImmersiveModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1180
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1231
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1235
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeAllTasks(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 365
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeAllTasks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskById(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 357
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskById(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist minimizeTaskByToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 348
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskByToken(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 970
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    goto :goto_1

    .line 970
    :cond_0
    const/4 v0, 0x0

    .line 971
    .local v0, "bOptions":Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v0    # "bOptions":Landroid/os/Bundle;
    goto :goto_2

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 975
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public blacklist moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 955
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist noMoreShowMultiWindowHandlerHelp(I)V
    .locals 1
    .param p1, "windowingMode"    # I

    .line 788
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->noMoreShowMultiWindowHandlerHelp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 792
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyDragSplitAppIconHasDrawable(Z)V
    .locals 1
    .param p1, "hasDrawable"    # Z

    .line 503
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyDragSplitAppIconHasDrawable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 507
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyFreeformMinimizeAnimationEnd(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 394
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyFreeformMinimizeAnimationEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 398
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1198
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 377
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    .line 553
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 557
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 1033
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1037
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 1015
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1019
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist removeFocusedTask(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 1270
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->removeFocusedTask(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1274
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportDexHelpShown(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1409
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportDexHelpShown(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 404
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist reportMultiWindowHandlerHelpShown(I)V
    .locals 1
    .param p1, "windowingMode"    # I

    .line 796
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportMultiWindowHandlerHelpShown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 800
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setBlockedMinimizeFreeformEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1136
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setBlockedMinimizeFreeformEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setCornerGestureCustomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1251
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCornerGestureCustomValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1255
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setCornerGestureEnabledWithSettings(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1222
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCornerGestureEnabledWithSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setCustomDensityEnabled(I)V
    .locals 1
    .param p1, "enabledFlags"    # I

    .line 1146
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCustomDensityEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1367
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    goto :goto_0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setFreeformAlpha(Landroid/os/IBinder;F)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "alpha"    # F

    .line 1102
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setFreeformAlpha(Landroid/os/IBinder;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setFreeformHeaderType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1077
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setFreeformHeaderType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMaxVisibleFreeformCountForDex(II)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "maxDexCount"    # I

    .line 485
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMaxVisibleFreeformCountForDex(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 690
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 691
    return-void
.end method

.method public blacklist setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I

    .line 711
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setNaviBarImmersiveModeLocked(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1187
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setNaviStarSplitImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "userId"    # I

    .line 1333
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    goto :goto_0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setSplitImmersiveMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1168
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setStayFocusActivityEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1286
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setStayFocusActivityEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist showOverlayAllApps(Landroid/os/IBinder;[I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "buttonPosition"    # [I

    .line 989
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->showOverlayAllApps(Landroid/os/IBinder;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 993
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist startFreeformTaskPinning(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 770
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startFreeformTaskPinning(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 774
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;

    .line 533
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isPointerInput"    # Z

    .line 1005
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1009
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist stopFreeformTaskPinning(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 778
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->stopFreeformTaskPinning(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist supportMultiSplitAppMinimumSize()Z
    .locals 1

    .line 1435
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsMultiWindow(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 448
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleFreeformWindowingMode()Z
    .locals 1

    .line 1156
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->toggleFreeformWindowingMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1160
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1207
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1211
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 386
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    .line 582
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 1041
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1045
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 1023
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist updateMultiSplitAppMinimumSize()V
    .locals 0

    .line 1446
    return-void
.end method
