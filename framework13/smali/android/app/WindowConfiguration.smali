.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$StagePosition;,
        Landroid/app/WindowConfiguration$StageType;,
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$DexTaskDocking;,
        Landroid/app/WindowConfiguration$FreeformStashType;,
        Landroid/app/WindowConfiguration$EmbedActivityMode;,
        Landroid/app/WindowConfiguration$FreeformTaskPinning;,
        Landroid/app/WindowConfiguration$FlexPanelMode;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final blacklist ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final blacklist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final blacklist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final blacklist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final blacklist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final blacklist ALWAYS_ON_TOP_ON:I = 0x1

.field private static final blacklist ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEX_TASK_DOCKING_LEFT:I = 0x1

.field public static final blacklist DEX_TASK_DOCKING_NONE:I = 0x0

.field public static final blacklist DEX_TASK_DOCKING_RIGHT:I = 0x2

.field public static final blacklist DEX_TASK_DOCKING_UNDEFINED:I = -0x1

.field public static final blacklist EMBED_ACTIVITY_MODE_FULL:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_MODE_LEFT:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_MODE_RIGHT:I = 0x3

.field public static final blacklist EMBED_ACTIVITY_MODE_UNDEFINED:I = 0x0

.field public static final blacklist FLEX_PANEL_MODE_OFF:I = 0x2

.field public static final blacklist FLEX_PANEL_MODE_ON:I = 0x1

.field public static final blacklist FLEX_PANEL_MODE_UNDEFINED:I = 0x0

.field public static final blacklist FREEFORM_STASH_TYPE_LEFT:I = 0x1

.field public static final blacklist FREEFORM_STASH_TYPE_NONE:I = 0x0

.field public static final blacklist FREEFORM_STASH_TYPE_RIGHT:I = 0x2

.field public static final blacklist FREEFORM_STASH_TYPE_UNDEFINED:I = -0x1

.field public static final blacklist FREEFORM_TASK_PINNING_DISABLE:I = 0x3

.field public static final blacklist FREEFORM_TASK_PINNING_PINNED:I = 0x2

.field public static final blacklist FREEFORM_TASK_PINNING_UNDEFINED:I = 0x0

.field public static final blacklist FREEFORM_TASK_PINNING_UNPINNED:I = 0x1

.field public static final blacklist POP_OVER_OFF:I = 0x2

.field public static final blacklist POP_OVER_ON:I = 0x1

.field public static final blacklist POP_OVER_ON_WITHOUT_OUTLINE_EFFECT:I = 0x3

.field private static final blacklist POP_OVER_UNDEFINED:I = 0x0

.field public static final blacklist ROTATION_UNDEFINED:I = -0x1

.field static final blacklist STAGE_CONFIG_POSITION_MASK:I = 0x78

.field static final blacklist STAGE_CONFIG_TYPE_MASK:I = 0x7

.field public static final blacklist STAGE_POSITION_BOTTOM:I = 0x40

.field public static final blacklist STAGE_POSITION_LEFT:I = 0x8

.field public static final blacklist STAGE_POSITION_RIGHT:I = 0x20

.field public static final blacklist STAGE_POSITION_TOP:I = 0x10

.field public static final blacklist STAGE_TYPE_CELL:I = 0x4

.field public static final blacklist STAGE_TYPE_MAIN:I = 0x1

.field public static final blacklist STAGE_TYPE_SIDE:I = 0x2

.field public static final blacklist STAGE_UNDEFINED:I = 0x0

.field public static final blacklist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final blacklist WINDOWING_MODE_PINNED:I = 0x2

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I = 0x3

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I = 0x4

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_DEX_TASK_DOCKING:I = 0x1000000

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x100

.field public static final blacklist WINDOW_CONFIG_DISPLAY_WINDOWING_MODE:I = 0x80

.field public static final blacklist WINDOW_CONFIG_EMBED_ACTIVITY_MODE:I = 0x800000

.field public static final blacklist WINDOW_CONFIG_FLEX_PANEL_MODE:I = 0x80000

.field public static final blacklist WINDOW_CONFIG_FREEFORM_TASK_PINNING:I = 0x400000

.field public static final blacklist WINDOW_CONFIG_FREEFORM_TASK_STASHING:I = 0x200

.field public static final blacklist WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final blacklist WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final blacklist WINDOW_CONFIG_STAGE_POSITION:I = 0x200000

.field public static final blacklist WINDOW_CONFIG_STAGE_TYPE:I = 0x100000

.field public static final greylist-max-o WINDOW_CONFIG_WINDOWING_MODE:I = 0x8


# instance fields
.field private greylist-max-o mActivityType:I

.field private blacklist mAlwaysOnTop:I

.field private greylist-max-o mAppBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mDexTaskDockingState:I

.field private blacklist mDisplayRotation:I

.field private blacklist mDisplayWindowingMode:I

.field private blacklist mEmbedActivityMode:I

.field private blacklist mFlexPanelMode:I

.field private blacklist mFreeformStashState:I

.field private blacklist mFreeformTaskPinningState:I

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mPopOverState:I

.field private blacklist mRotation:I

.field private blacklist mStage:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 615
    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 94
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 220
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 317
    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 350
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 525
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    .line 526
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 94
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 220
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 317
    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 350
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 530
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 531
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 94
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 220
    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 317
    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 350
    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 534
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 535
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "applicationType"    # I

    .line 1525
    packed-switch p0, :pswitch_data_0

    .line 1533
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1531
    :pswitch_0
    const-string v0, "dream"

    return-object v0

    .line 1530
    :pswitch_1
    const-string v0, "assistant"

    return-object v0

    .line 1529
    :pswitch_2
    const-string/jumbo v0, "recents"

    return-object v0

    .line 1528
    :pswitch_3
    const-string v0, "home"

    return-object v0

    .line 1527
    :pswitch_4
    const-string/jumbo v0, "standard"

    return-object v0

    .line 1526
    :pswitch_5
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

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

.method public static blacklist alwaysOnTopToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alwaysOnTop"    # I

    .line 1538
    packed-switch p0, :pswitch_data_0

    .line 1543
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1541
    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    .line 1540
    :pswitch_1
    const-string/jumbo v0, "on"

    return-object v0

    .line 1539
    :pswitch_2
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist dexTaskDockingStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "dexTaskDockingState"    # I

    .line 1670
    packed-switch p0, :pswitch_data_0

    .line 1676
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1674
    :pswitch_0
    const-string/jumbo v0, "right"

    return-object v0

    .line 1673
    :pswitch_1
    const-string v0, "left"

    return-object v0

    .line 1672
    :pswitch_2
    const-string/jumbo v0, "none"

    return-object v0

    .line 1671
    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist embedActivityModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1622
    packed-switch p0, :pswitch_data_0

    .line 1628
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1626
    :pswitch_0
    const-string/jumbo v0, "right"

    return-object v0

    .line 1625
    :pswitch_1
    const-string v0, "left"

    return-object v0

    .line 1624
    :pswitch_2
    const-string v0, "full"

    return-object v0

    .line 1623
    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist flexPanelModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flexPanelMode"    # I

    .line 1635
    packed-switch p0, :pswitch_data_0

    .line 1640
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1638
    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    .line 1637
    :pswitch_1
    const-string/jumbo v0, "on"

    return-object v0

    .line 1636
    :pswitch_2
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist freeformStashModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flexPanelMode"    # I

    .line 1657
    packed-switch p0, :pswitch_data_0

    .line 1663
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1661
    :pswitch_0
    const-string/jumbo v0, "right"

    return-object v0

    .line 1660
    :pswitch_1
    const-string v0, "left"

    return-object v0

    .line 1659
    :pswitch_2
    const-string/jumbo v0, "none"

    return-object v0

    .line 1658
    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist freeformTaskPinningToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1608
    packed-switch p0, :pswitch_data_0

    .line 1614
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1612
    :pswitch_0
    const-string v0, "disable"

    return-object v0

    .line 1611
    :pswitch_1
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 1610
    :pswitch_2
    const-string/jumbo v0, "unpinned"

    return-object v0

    .line 1609
    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist inMultiWindowMode(I)Z
    .locals 1
    .param p0, "windowingMode"    # I

    .line 1428
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isDexTaskDocking(I)Z
    .locals 2
    .param p0, "dexTaskDockingState"    # I

    .line 383
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist-max-o isFloating(I)Z
    .locals 1
    .param p0, "windowingMode"    # I

    .line 1419
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public static blacklist isSplitScreenWindowingMode(I)Z
    .locals 1
    .param p0, "stage"    # I

    .line 1505
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z
    .locals 1
    .param p0, "winConfig"    # Landroid/app/WindowConfiguration;

    .line 1500
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist popOverStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "popOverState"    # I

    .line 209
    packed-switch p0, :pswitch_data_0

    .line 215
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :pswitch_0
    const-string/jumbo v0, "on-without-outline-effect"

    return-object v0

    .line 212
    :pswitch_1
    const-string/jumbo v0, "off"

    return-object v0

    .line 211
    :pswitch_2
    const-string/jumbo v0, "on"

    return-object v0

    .line 210
    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setAlwaysOnTop(I)V
    .locals 0
    .param p1, "alwaysOnTop"    # I

    .line 701
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 702
    return-void
.end method

.method public static blacklist stageConfigToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stageConfig"    # I

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1550
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1553
    :pswitch_1
    const-string v1, "cell/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1552
    :pswitch_2
    const-string/jumbo v1, "side/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1551
    :pswitch_3
    const-string/jumbo v1, "main/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1554
    :pswitch_4
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1556
    :goto_0
    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1564
    :sswitch_0
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1562
    :sswitch_1
    const-string v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1560
    :sswitch_2
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1563
    :sswitch_3
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1559
    :sswitch_4
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1561
    :sswitch_5
    const-string v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1558
    :sswitch_6
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1557
    :sswitch_7
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x18 -> :sswitch_5
        0x20 -> :sswitch_4
        0x30 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist stagePositionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1589
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1597
    :sswitch_0
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1595
    :sswitch_1
    const-string v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1593
    :sswitch_2
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1596
    :sswitch_3
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1592
    :sswitch_4
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1594
    :sswitch_5
    const-string v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1591
    :sswitch_6
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1590
    :sswitch_7
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1598
    :sswitch_8
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1600
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x18 -> :sswitch_5
        0x20 -> :sswitch_4
        0x30 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o supportSplitScreenWindowingMode(I)Z
    .locals 1
    .param p0, "activityType"    # I

    .line 1491
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "windowingMode"    # I

    .line 1511
    packed-switch p0, :pswitch_data_0

    .line 1520
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1514
    :pswitch_0
    const-string/jumbo v0, "multi-window"

    return-object v0

    .line 1518
    :pswitch_1
    const-string v0, "freeform"

    return-object v0

    .line 1517
    :pswitch_2
    const-string/jumbo v0, "split-screen-secondary"

    return-object v0

    .line 1516
    :pswitch_3
    const-string/jumbo v0, "split-screen-primary"

    return-object v0

    .line 1515
    :pswitch_4
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 1513
    :pswitch_5
    const-string v0, "fullscreen"

    return-object v0

    .line 1512
    :pswitch_6
    const-string/jumbo v0, "undefined"

    return-object v0

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


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .locals 2

    .line 1437
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o canResizeTask()Z
    .locals 2

    .line 1397
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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

.method public blacklist compareTo(Landroid/app/WindowConfiguration;)I
    .locals 3
    .param p1, "that"    # Landroid/app/WindowConfiguration;

    .line 1164
    const/4 v0, 0x0

    .line 1165
    .local v0, "n":I
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 1166
    const/4 v1, 0x1

    return v1

    .line 1167
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 1168
    const/4 v1, -0x1

    return v1

    .line 1169
    :cond_1
    if-eqz v1, :cond_5

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    .line 1170
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1171
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_2

    return v1

    .line 1172
    :cond_2
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1173
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_3

    return v0

    .line 1174
    :cond_3
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1175
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_4

    return v1

    .line 1176
    :cond_4
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1177
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_5

    return v0

    .line 1180
    :cond_5
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1181
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_6

    return v1

    .line 1182
    :cond_6
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1183
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_7

    return v0

    .line 1184
    :cond_7
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1185
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_8

    return v1

    .line 1186
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1187
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_9

    return v0

    .line 1189
    :cond_9
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1190
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_a

    return v1

    .line 1191
    :cond_a
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1192
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_b

    return v0

    .line 1193
    :cond_b
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1194
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_c

    return v1

    .line 1195
    :cond_c
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 1196
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_d

    return v0

    .line 1198
    :cond_d
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    .line 1199
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_e

    return v1

    .line 1200
    :cond_e
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    .line 1201
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_f

    return v0

    .line 1202
    :cond_f
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    .line 1203
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_10

    return v1

    .line 1204
    :cond_10
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    .line 1205
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_11

    return v0

    .line 1207
    :cond_11
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    sub-int/2addr v1, v2

    .line 1208
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_12

    return v1

    .line 1209
    :cond_12
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v0, v2

    .line 1210
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_13

    return v0

    .line 1214
    :cond_13
    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mStage:I

    sub-int/2addr v1, v2

    .line 1215
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_14

    return v1

    .line 1218
    :cond_14
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    sub-int/2addr v0, v2

    .line 1219
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_15

    return v0

    .line 1221
    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_16

    .line 1222
    iget v1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    sub-int v0, v1, v2

    .line 1223
    if-eqz v0, :cond_16

    return v0

    .line 1226
    :cond_16
    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    sub-int/2addr v1, v2

    .line 1227
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_17

    return v1

    .line 1234
    :cond_17
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    sub-int/2addr v0, v2

    .line 1235
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_18

    return v0

    .line 1238
    :cond_18
    iget v1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    sub-int/2addr v1, v2

    .line 1239
    .end local v0    # "n":I
    .restart local v1    # "n":I
    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .locals 9
    .param p1, "other"    # Landroid/app/WindowConfiguration;
    .param p2, "compareUndefined"    # Z

    .line 1071
    const-wide/16 v0, 0x0

    .line 1073
    .local v0, "changes":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 1078
    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 1080
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1081
    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 1084
    :cond_3
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1085
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 1088
    :cond_4
    if-nez p2, :cond_5

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_6

    .line 1090
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 1093
    :cond_6
    if-nez p2, :cond_7

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_8

    .line 1095
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 1098
    :cond_8
    if-nez p2, :cond_9

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_a

    :cond_9
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_a

    .line 1100
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 1103
    :cond_a
    const/4 v2, -0x1

    if-nez p2, :cond_b

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_c

    :cond_b
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_c

    .line 1105
    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    .line 1108
    :cond_c
    const-wide/16 v3, 0x80

    if-nez p2, :cond_d

    iget v5, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v5, :cond_e

    :cond_d
    iget v5, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v5, v6, :cond_e

    .line 1110
    or-long/2addr v0, v3

    .line 1114
    :cond_e
    if-nez p2, :cond_f

    iget v5, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-eqz v5, :cond_11

    .line 1115
    :cond_f
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    .line 1116
    .local v5, "deltaStageType":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v6

    if-eq v6, v5, :cond_10

    .line 1117
    const-wide/32 v6, 0x100000

    or-long/2addr v0, v6

    .line 1119
    :cond_10
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v6

    .line 1120
    .local v6, "deltaStagePosition":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v7

    if-eq v7, v6, :cond_11

    .line 1121
    const-wide/32 v7, 0x200000

    or-long/2addr v0, v7

    .line 1125
    .end local v5    # "deltaStageType":I
    .end local v6    # "deltaStagePosition":I
    :cond_11
    if-nez p2, :cond_12

    iget v5, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v5, :cond_13

    :cond_12
    iget v5, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v5, v6, :cond_13

    .line 1129
    or-long/2addr v0, v3

    .line 1131
    :cond_13
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_15

    if-nez p2, :cond_14

    iget v3, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v3, :cond_15

    :cond_14
    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v3, v4, :cond_15

    .line 1135
    const-wide/32 v3, 0x800000

    or-long/2addr v0, v3

    .line 1142
    :cond_15
    if-nez p2, :cond_16

    iget v3, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    if-eq v3, v2, :cond_17

    :cond_16
    iget v3, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    if-eq v3, v4, :cond_17

    .line 1145
    const-wide/16 v3, 0x200

    or-long/2addr v0, v3

    .line 1147
    :cond_17
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v3, :cond_19

    if-nez p2, :cond_18

    iget v3, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v3, v2, :cond_19

    :cond_18
    iget v3, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v3, v4, :cond_19

    .line 1150
    const-wide/32 v3, 0x1000000

    or-long/2addr v0, v3

    .line 1154
    :cond_19
    if-nez p2, :cond_1a

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v2, :cond_1b

    :cond_1a
    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v2, v3, :cond_1b

    .line 1156
    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 1159
    :cond_1b
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1323
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1324
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 1325
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1327
    :cond_0
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1328
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1329
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1330
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1331
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1332
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 1250
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1251
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1252
    :cond_1
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_2

    .line 1253
    return v0

    .line 1255
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public blacklist getActivityType()I
    .locals 1

    .line 788
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .locals 1

    .line 719
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 724
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDexTaskDockingState()I
    .locals 1

    .line 378
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return v0
.end method

.method public blacklist getDisplayRotation()I
    .locals 1

    .line 738
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public blacklist getDisplayWindowingMode()I
    .locals 1

    .line 766
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    return v0
.end method

.method public blacklist getEmbedActivityMode()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return v0
.end method

.method public blacklist getFreeformStashState()I
    .locals 1

    .line 345
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    return v0
.end method

.method public blacklist getFreeformTaskPinningState()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    return v0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .line 730
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getRotation()I
    .locals 1

    .line 742
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getStage()I
    .locals 1

    .line 797
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return v0
.end method

.method public blacklist getStagePosition()I
    .locals 1

    .line 817
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x78

    return v0
.end method

.method public blacklist getStagePositionToString()Ljava/lang/String;
    .locals 1

    .line 1583
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStageType()I
    .locals 1

    .line 807
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public blacklist getStageTypeToString()Ljava/lang/String;
    .locals 2

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1572
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1575
    :pswitch_1
    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1574
    :pswitch_2
    const-string/jumbo v1, "side"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1573
    :pswitch_3
    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1576
    :pswitch_4
    const-string/jumbo v1, "undefined"

    return-object v1

    .line 1578
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 755
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .locals 2

    .line 1476
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasWindowDecorCaption()Z
    .locals 3

    .line 1387
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o hasWindowShadow()Z
    .locals 2

    .line 1378
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

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

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1263
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1264
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1265
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 1266
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    .line 1267
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    .line 1268
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    .line 1269
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    add-int/2addr v0, v2

    .line 1270
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v1, v2

    .line 1273
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mStage:I

    add-int/2addr v0, v2

    .line 1279
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .locals 5

    .line 1446
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 1447
    :cond_0
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    return v1

    .line 1448
    :cond_1
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v4, 0x0

    if-eq v2, v1, :cond_2

    return v4

    .line 1449
    :cond_2
    if-eq v0, v3, :cond_4

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist isEmbedded()Z
    .locals 3

    .line 303
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 312
    return v2

    .line 310
    :pswitch_0
    return v1

    .line 307
    :pswitch_1
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 305
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isFlexPanelEnabled()Z
    .locals 2

    .line 1650
    iget v0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isPopOver()Z
    .locals 3

    .line 200
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist isPopOverWithoutOutlineEffect()Z
    .locals 2

    .line 205
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o keepVisibleDeadAppWindowOnScreen()Z
    .locals 2

    .line 1459
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o persistTaskBounds()Z
    .locals 2

    .line 1404
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 575
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 576
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 577
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 591
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 603
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 607
    :cond_1
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 1346
    .local v0, "token":J
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1347
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1356
    :pswitch_0
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1357
    goto :goto_1

    .line 1353
    :pswitch_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1354
    goto :goto_1

    .line 1362
    :pswitch_2
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_1

    .line 1359
    :pswitch_3
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 1360
    goto :goto_1

    .line 1349
    :pswitch_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 1350
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    nop

    .line 1363
    :goto_1
    goto :goto_0

    .line 1368
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1369
    nop

    .line 1370
    return-void

    .line 1368
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1369
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setActivityType(I)V
    .locals 3
    .param p1, "activityType"    # I

    .line 770
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_0

    .line 771
    return-void

    .line 777
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 780
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_2
    :goto_0
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 784
    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .locals 1
    .param p1, "alwaysOnTop"    # Z

    .line 689
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 690
    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 710
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 715
    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 646
    if-nez p1, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 648
    return-void

    .line 651
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 652
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 632
    if-nez p1, :cond_0

    .line 633
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 634
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 638
    return-void
.end method

.method public blacklist setDexTaskDockingState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 373
    iput p1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    .line 374
    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 680
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 681
    return-void
.end method

.method public blacklist setDisplayWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 760
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 761
    return-void
.end method

.method public blacklist setEmbedActivityMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 293
    iput p1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    .line 294
    return-void
.end method

.method public blacklist setFlexPanelMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1645
    iput p1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    .line 1646
    return-void
.end method

.method public blacklist setFreeformStashState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 340
    iput p1, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 341
    return-void
.end method

.method public blacklist setFreeformTaskPinningState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 261
    iput p1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 262
    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 672
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 660
    if-nez p1, :cond_0

    .line 661
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 662
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 665
    return-void
.end method

.method public blacklist setPopOverState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 196
    iput p1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 197
    return-void
.end method

.method public blacklist setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 746
    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 747
    return-void
.end method

.method public blacklist setStage(I)V
    .locals 0
    .param p1, "stage"    # I

    .line 793
    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 794
    return-void
.end method

.method public blacklist setStagePosition(I)V
    .locals 2
    .param p1, "stagePosition"    # I

    .line 811
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x7

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 812
    and-int/lit8 v1, p1, 0x78

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 813
    return-void
.end method

.method public blacklist setStageType(I)V
    .locals 2
    .param p1, "stageType"    # I

    .line 801
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x78

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 802
    and-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 803
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .locals 1
    .param p1, "other"    # Landroid/app/WindowConfiguration;

    .line 822
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 823
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 824
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 825
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 826
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 827
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 828
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 829
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 830
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 833
    iget v0, p1, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStage(I)V

    .line 836
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 838
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_0

    .line 839
    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 842
    :cond_0
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    .line 848
    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 850
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_1

    .line 851
    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 854
    :cond_1
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .locals 1
    .param p1, "delta"    # Landroid/app/WindowConfiguration;
    .param p2, "mask"    # I

    .line 1003
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1006
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1009
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 1012
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 1013
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1015
    :cond_3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_4

    .line 1016
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1018
    :cond_4
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_5

    .line 1019
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 1021
    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_6

    .line 1022
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1024
    :cond_6
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_7

    .line 1025
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1027
    :cond_7
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_8

    .line 1028
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 1032
    :cond_8
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1033
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 1035
    :cond_9
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 1036
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 1039
    :cond_a
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_b

    .line 1041
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1043
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_c

    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c

    .line 1045
    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 1050
    :cond_c
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_d

    .line 1051
    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    .line 1053
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_e

    .line 1054
    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 1057
    :cond_e
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .locals 2

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 865
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 866
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 867
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 868
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 869
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 870
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 871
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 872
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 875
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setStage(I)V

    .line 878
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 881
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 884
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    .line 887
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 890
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 892
    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 750
    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 751
    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .locals 1

    .line 1486
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .locals 1

    .line 1414
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1288
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1289
    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 1290
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 1291
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 1292
    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 1293
    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_1

    .line 1295
    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    .line 1297
    invoke-static {v1}, Landroid/app/WindowConfiguration;->popOverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    .line 1298
    invoke-static {v1}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFreeformTaskPinningState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    .line 1301
    invoke-static {v1}, Landroid/app/WindowConfiguration;->freeformTaskPinningToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1302
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEmbedActivityMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-static {v3}, Landroid/app/WindowConfiguration;->embedActivityModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFreeformStashState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    .line 1307
    invoke-static {v1}, Landroid/app/WindowConfiguration;->freeformStashModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1308
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v1, :cond_3

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDexTaskDockingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    return-object v0
.end method

.method public greylist-max-o unset()V
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 860
    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .locals 1

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 698
    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .locals 5
    .param p1, "delta"    # Landroid/app/WindowConfiguration;

    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, "changed":I
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    or-int/lit8 v0, v0, 0x1

    .line 907
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 909
    :cond_0
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    or-int/lit8 v0, v0, 0x2

    .line 911
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 913
    :cond_1
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 914
    or-int/lit8 v0, v0, 0x4

    .line 915
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 917
    :cond_2
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_3

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v1, :cond_3

    .line 919
    or-int/lit8 v0, v0, 0x8

    .line 920
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 922
    :cond_3
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_4

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v1, :cond_4

    .line 924
    or-int/lit8 v0, v0, 0x10

    .line 925
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 927
    :cond_4
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_5

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v1, :cond_5

    .line 929
    or-int/lit8 v0, v0, 0x20

    .line 930
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 932
    :cond_5
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_6

    .line 933
    or-int/lit8 v0, v0, 0x40

    .line 934
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 936
    :cond_6
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v1, :cond_7

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v1, :cond_7

    .line 938
    or-int/lit16 v0, v0, 0x80

    .line 939
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 941
    :cond_7
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_8

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v3, :cond_8

    .line 943
    or-int/lit16 v0, v0, 0x100

    .line 944
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 948
    :cond_8
    iget v1, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-nez v1, :cond_9

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 950
    :cond_9
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    .line 951
    .local v1, "deltaStageType":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 952
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 953
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 955
    :cond_a
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v3

    .line 956
    .local v3, "deltaStagePosition":I
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v4

    if-eq v4, v3, :cond_b

    .line 957
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 958
    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 962
    .end local v1    # "deltaStageType":I
    .end local v3    # "deltaStagePosition":I
    :cond_b
    iget v1, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v1, :cond_c

    iget v3, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v3, v1, :cond_c

    .line 965
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 967
    :cond_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_d

    iget v1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v1, :cond_d

    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v3, v1, :cond_d

    .line 970
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 972
    :cond_d
    iget v1, p1, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    if-eq v1, v2, :cond_e

    iget v3, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    if-eq v3, v1, :cond_e

    .line 975
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    .line 977
    :cond_e
    iget v1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eqz v1, :cond_f

    iget v3, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eq v3, v1, :cond_f

    .line 980
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    .line 988
    :cond_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v1, :cond_10

    iget v1, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v1, v2, :cond_10

    iget v2, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v2, v1, :cond_10

    .line 991
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 992
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 995
    :cond_10
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .locals 2

    .line 1468
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 539
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 541
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformStashState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_1

    .line 568
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    :cond_1
    return-void
.end method
