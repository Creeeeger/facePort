.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$DexTaskDocking;,
        Landroid/app/WindowConfiguration$FreeformTranslucent;,
        Landroid/app/WindowConfiguration$StagePosition;,
        Landroid/app/WindowConfiguration$StageType;,
        Landroid/app/WindowConfiguration$WindowConfig;,
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

.field public static final blacklist EMBED_ACTIVITY_MODE_BOTTOM:I = 0x5

.field public static final blacklist EMBED_ACTIVITY_MODE_FULL:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_MODE_LEFT:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_MODE_RIGHT:I = 0x3

.field public static final blacklist EMBED_ACTIVITY_MODE_TOP:I = 0x4

.field public static final blacklist EMBED_ACTIVITY_MODE_UNDEFINED:I = 0x0

.field public static final blacklist FLEX_PANEL_MODE_OFF:I = 0x2

.field public static final blacklist FLEX_PANEL_MODE_ON:I = 0x1

.field public static final blacklist FLEX_PANEL_MODE_UNDEFINED:I = 0x0

.field public static final blacklist FREEFORM_TASK_PINNING_DISABLE:I = 0x3

.field public static final blacklist FREEFORM_TASK_PINNING_PINNED:I = 0x2

.field public static final blacklist FREEFORM_TASK_PINNING_UNDEFINED:I = 0x0

.field public static final blacklist FREEFORM_TASK_PINNING_UNPINNED:I = 0x1

.field public static final blacklist FREEFORM_TRANSLUCENT_OFF:I = 0x2

.field public static final blacklist FREEFORM_TRANSLUCENT_ON:I = 0x1

.field private static final blacklist FREEFORM_TRANSLUCENT_UNDEFINED:I = 0x0

.field public static final blacklist POP_OVER_OFF:I = 0x2

.field public static final blacklist POP_OVER_ON:I = 0x1

.field public static final blacklist POP_OVER_ON_WITHOUT_OUTLINE_EFFECT:I = 0x3

.field public static final blacklist POP_OVER_UNDEFINED:I = 0x0

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

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_COMPAT_SANDBOX:I = 0x2000000

.field public static final blacklist WINDOW_CONFIG_DEX_TASK_DOCKING:I = 0x1000000

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x80

.field public static final blacklist WINDOW_CONFIG_EMBED_ACTIVITY_MODE:I = 0x800000

.field public static final blacklist WINDOW_CONFIG_FLEX_PANEL_MODE:I = 0x80000

.field public static final blacklist WINDOW_CONFIG_FREEFORM_TASK_PINNING:I = 0x400000

.field public static final blacklist WINDOW_CONFIG_FREEFORM_TRANSLUCENT:I = 0x4000000

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

.field private blacklist mCompatSandboxBounds:Landroid/graphics/Rect;

.field private blacklist mCompatSandboxFlags:I

.field private blacklist mCompatSandboxScale:F

.field private blacklist mCompatSandboxScaledBounds:Landroid/graphics/Rect;

.field private blacklist mDexTaskDockingState:I

.field private blacklist mDisplayRotation:I

.field private blacklist mEmbedActivityMode:I

.field private blacklist mFlexPanelMode:I

.field private blacklist mFreeformTaskPinningState:I

.field private blacklist mFreeformTranslucent:I

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mOverlappingWithCutout:Z

.field private blacklist mPopOverState:I

.field private blacklist mRotation:I

.field private blacklist mStage:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v1, p0, Landroid/app/WindowConfiguration;->mFreeformTranslucent:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v1, p0, Landroid/app/WindowConfiguration;->mFreeformTranslucent:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v1, p0, Landroid/app/WindowConfiguration;->mFreeformTranslucent:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "dream"

    return-object v0

    :pswitch_1
    const-string v0, "assistant"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "recents"

    return-object v0

    :pswitch_3
    const-string v0, "home"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "standard"

    return-object v0

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

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "on"

    return-object v0

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

.method public static blacklist areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 3

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist compatSandboxInfoToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCompatSandboxFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    const-string v3, " mCompatSandboxScale="

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dexTaskDockingStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "right"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "left"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "undefined"

    return-object v0

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

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "bottom"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "top"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "right"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "left"

    return-object v0

    :pswitch_4
    const-string v0, "full"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "undefined"

    return-object v0

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

.method public static blacklist flexPanelModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "on"

    return-object v0

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

.method public static blacklist freeformTaskPinningToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "disable"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "pinned"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unpinned"

    return-object v0

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

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "on-without-outline-effect"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "off"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "on"

    return-object v0

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

.method private static blacklist scaleBounds(FLandroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private blacklist setAlwaysOnTop(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public static blacklist stageConfigToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v1, "cell/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "side/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "main/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "undefined"

    return-object v1

    :goto_0
    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
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

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x78

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "right-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "left-bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "right-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "left-top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "undefined"

    return-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

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

.method private static blacklist translucentToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "TRANSLUCENT_OFF"

    return-object v0

    :pswitch_1
    const-string v0, "TRANSLUCENT_ON"

    return-object v0

    :pswitch_2
    const-string v0, "UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "multi-window"

    return-object v0

    :pswitch_2
    const-string v0, "freeform"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "pinned"

    return-object v0

    :pswitch_4
    const-string v0, "fullscreen"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .locals 2

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

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

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

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_e

    return v1

    :cond_e
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_f

    return v0

    :cond_f
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_10

    return v1

    :cond_10
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_11

    return v0

    :cond_11
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_12

    return v1

    :cond_12
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mStage:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_13

    return v0

    :cond_13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_14

    return v0

    :cond_14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v1, :cond_15

    iget v1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_15

    return v0

    :cond_15
    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_16

    return v1

    :cond_16
    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_17

    return v0

    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v1, :cond_18

    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_18

    return v0

    :cond_18
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .locals 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_4
    const-wide/16 v2, 0x8

    if-nez p2, :cond_5

    iget v4, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v4, :cond_6

    :cond_5
    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v4, v5, :cond_6

    or-long/2addr v0, v2

    :cond_6
    if-nez p2, :cond_7

    iget v4, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v4, :cond_8

    :cond_7
    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v4, v5, :cond_8

    const-wide/16 v4, 0x10

    or-long/2addr v0, v4

    :cond_8
    if-nez p2, :cond_9

    iget v4, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v4, :cond_a

    :cond_9
    iget v4, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v4, v5, :cond_a

    const-wide/16 v4, 0x20

    or-long/2addr v0, v4

    :cond_a
    const/4 v4, -0x1

    if-nez p2, :cond_b

    iget v5, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v5, v4, :cond_c

    :cond_b
    iget v5, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v5, v6, :cond_c

    const-wide/16 v5, 0x40

    or-long/2addr v0, v5

    :cond_c
    if-nez p2, :cond_d

    iget v5, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v5, v4, :cond_e

    :cond_d
    iget v5, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v5, v6, :cond_e

    const-wide/16 v5, 0x80

    or-long/2addr v0, v5

    :cond_e
    if-nez p2, :cond_f

    iget v5, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-eqz v5, :cond_11

    :cond_f
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v6

    if-eq v6, v5, :cond_10

    const-wide/32 v6, 0x100000

    or-long/2addr v0, v6

    :cond_10
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v7

    if-eq v7, v6, :cond_11

    const-wide/32 v7, 0x200000

    or-long/2addr v0, v7

    :cond_11
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v5, :cond_13

    if-nez p2, :cond_12

    iget v5, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v5, :cond_13

    :cond_12
    iget v5, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v5, v6, :cond_13

    const-wide/32 v5, 0x800000

    or-long/2addr v0, v5

    :cond_13
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v5, :cond_15

    if-nez p2, :cond_14

    iget v5, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    if-eqz v5, :cond_15

    :cond_14
    iget v5, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iget v6, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    if-eq v5, v6, :cond_15

    const-wide/32 v5, 0x80000

    or-long/2addr v0, v5

    :cond_15
    const-wide/32 v5, 0x2000000

    if-nez p2, :cond_16

    iget v7, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eqz v7, :cond_17

    :cond_16
    iget v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v8, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eq v7, v8, :cond_17

    or-long/2addr v0, v5

    goto :goto_0

    :cond_17
    if-nez p2, :cond_18

    iget v7, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_19

    :cond_18
    iget v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v8, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_19

    or-long/2addr v0, v5

    goto :goto_0

    :cond_19
    if-nez p2, :cond_1a

    iget-object v7, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_1c

    :cond_1a
    iget-object v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object v8, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eq v7, v8, :cond_1c

    iget-object v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_1b

    iget-object v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object v8, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    :cond_1b
    or-long/2addr v0, v5

    :cond_1c
    :goto_0
    if-nez p2, :cond_1d

    iget v5, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v5, v4, :cond_1e

    :cond_1d
    iget v4, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v4, v5, :cond_1e

    const-wide/32 v4, 0x1000000

    or-long/2addr v0, v4

    :cond_1e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v4, :cond_20

    if-nez p2, :cond_1f

    iget v4, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v4, :cond_20

    :cond_1f
    iget v4, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v4, v5, :cond_20

    or-long/2addr v0, v2

    :cond_20
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_2

    return v0

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

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getCompatSandboxBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getCompatSandboxFlags()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    :goto_0
    return v0
.end method

.method public blacklist getCompatSandboxInvScale()F
    .locals 3

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    div-float v0, v1, v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public blacklist getCompatSandboxScaledBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    :cond_1
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    return-object v1
.end method

.method public blacklist getDexTaskDockingState()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return v0
.end method

.method public blacklist getDisplayRotation()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public blacklist getEmbedActivityMode()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return v0
.end method

.method public blacklist getFreeformTaskPinningState()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    return v0
.end method

.method public blacklist getFreeformTranslucent()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTranslucent:I

    return v0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getPopOverState()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    return v0
.end method

.method public blacklist getRotation()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getStage()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return v0
.end method

.method public blacklist getStagePosition()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x78

    return v0
.end method

.method public blacklist getStagePositionToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStageType()I
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public blacklist getStageTypeToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "side"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "undefined"

    return-object v1

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

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .locals 2

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

.method public greylist-max-o hasWindowShadow()Z
    .locals 2

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

    const/4 v0, 0x0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mStage:I

    add-int/2addr v1, v2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    add-int v1, v0, v2

    :cond_0
    return v1
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .locals 4

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    return v2
.end method

.method public blacklist isEmbedded()Z
    .locals 3

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isFlexPanelEnabled()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isOverlappingWithCutout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    return v0
.end method

.method public blacklist isPopOver()Z
    .locals 3

    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

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

.method public blacklist isSplitScreen()Z
    .locals 1

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

.method public blacklist overrideUndefinedFrom(Landroid/app/WindowConfiguration;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    :cond_1
    return-void
.end method

.method public greylist-max-o persistTaskBounds()Z
    .locals 2

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

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    :cond_2
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    :pswitch_2
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_1

    :pswitch_3
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    goto :goto_1

    :pswitch_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

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

.method public blacklist scale(F)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public blacklist setActivityType(I)V
    .locals 3

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

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

    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setCompatSandboxValues(IFLandroid/graphics/Rect;)V
    .locals 1

    iput p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iput p2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public blacklist setCompatSandboxValues(Landroid/app/WindowConfiguration;)V
    .locals 3

    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setDexTaskDockingState(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return-void
.end method

.method public blacklist setEmbedActivityMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return-void
.end method

.method public blacklist setFlexPanelMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    return-void
.end method

.method public blacklist setFreeformTaskPinningState(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    return-void
.end method

.method public blacklist setFreeformTranslucent(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mFreeformTranslucent:I

    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setOverlappingWithCutout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    return-void
.end method

.method public blacklist setPopOverState(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    return-void
.end method

.method public blacklist setRotation(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return-void
.end method

.method public blacklist setStage(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setStagePosition(I)V
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v1, 0x7

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, p1, 0x78

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setStageType(I)V
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v1, 0x78

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .locals 3

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStage(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_0
    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    iget-boolean v0, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFlexPanelMode(I)V

    :cond_1
    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    :cond_2
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_4
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_6
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    :cond_7
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStageType(I)V

    :cond_8
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFlexPanelMode(I)V

    :cond_b
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c

    iget v0, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    :cond_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    :cond_d
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTranslucent(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

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

    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

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

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    const-string v2, ""

    if-eqz v1, :cond_2

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

    const-string v1, " mPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->popOverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOverlappingWithCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mFlexPanelMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    invoke-static {v3}, Landroid/app/WindowConfiguration;->flexPanelModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/WindowConfiguration;->compatSandboxInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDexTaskDockingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mFreeformTaskPinningState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->freeformTaskPinningToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o unset()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

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

    or-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x8

    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x10

    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_4
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x20

    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    :cond_5
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_6

    or-int/lit8 v0, v0, 0x40

    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_6
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x80

    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    :cond_7
    iget v1, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-nez v1, :cond_8

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_a

    :cond_8
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    if-eq v3, v1, :cond_9

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    :cond_9
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v4

    if-eq v4, v3, :cond_a

    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    :cond_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    if-eq v1, v3, :cond_b

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iget v1, p1, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFlexPanelMode(I)V

    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v1, :cond_c

    iget v1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v1, v3, :cond_c

    iget v1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_c
    iget v1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eq v1, v3, :cond_d

    iget v1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    :cond_d
    iget-boolean v1, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iget-boolean v3, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eq v1, v3, :cond_e

    iget-boolean v1, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    :cond_e
    const/4 v1, 0x0

    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eqz v4, :cond_f

    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eq v4, v5, :cond_f

    const/4 v1, 0x1

    iget v3, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    :cond_f
    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_10

    iget v5, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_10

    const/4 v1, 0x1

    iget v4, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    :cond_10
    iget-object v5, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_11

    iget-object v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v1, 0x1

    iget-object v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    :cond_11
    if-eqz v1, :cond_12

    const/high16 v6, 0x2000000

    or-int/2addr v0, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    :cond_12
    iget v1, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v1, v2, :cond_13

    iget v1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    if-eq v1, v2, :cond_13

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iget v1, p1, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    :cond_13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v1, :cond_14

    iget v1, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    if-eq v1, v2, :cond_14

    iget v1, p1, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    :cond_14
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

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

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/WindowConfiguration;->mFreeformTaskPinningState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
