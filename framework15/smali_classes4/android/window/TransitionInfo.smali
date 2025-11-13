.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$Change;,
        Landroid/window/TransitionInfo$Root;,
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$ChangeFlags2;,
        Landroid/window/TransitionInfo$ChangeFlags;,
        Landroid/window/TransitionInfo$TransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG2_TRANSPARENT:I = 0x1

.field public static final blacklist FLAGS_IS_NON_APP_WINDOW:I = 0x10102

.field public static final blacklist FLAGS_IS_OCCLUDED_NO_ANIMATION:I = 0x48000

.field public static final blacklist FLAG_BACK_GESTURE_ANIMATED:I = 0x20000

.field public static final blacklist FLAG_CONFIG_AT_END:I = 0x400000

.field public static final blacklist FLAG_CROSS_PROFILE_OWNER_THUMBNAIL:I = 0x1000

.field public static final blacklist FLAG_CROSS_PROFILE_WORK_THUMBNAIL:I = 0x2000

.field public static final blacklist FLAG_CUSTOM_DISPLAY_CHANGE_TRANSITION:I = 0x10000000

.field public static final blacklist FLAG_DISPLAY_HAS_ALERT_WINDOWS:I = 0x80

.field public static final blacklist FLAG_EDGE_EXTENSION_RESTRICTION:I = 0x4000000

.field public static final blacklist FLAG_FAST_ANIMATION:I = 0x20000000

.field public static final blacklist FLAG_FILLS_TASK:I = 0x400

.field public static final blacklist FLAG_FIRST_CUSTOM:I = 0x800000

.field public static final blacklist FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY:I = 0x200

.field public static final blacklist FLAG_IS_ACTIVITY:I = 0x1000000

.field public static final blacklist FLAG_IS_BEHIND_STARTING_WINDOW:I = 0x4000

.field public static final blacklist FLAG_IS_DISPLAY:I = 0x20

.field public static final blacklist FLAG_IS_FIXED_PORTRAIT:I = 0x40000000

.field public static final blacklist FLAG_IS_INPUT_METHOD:I = 0x100

.field public static final blacklist FLAG_IS_OCCLUDED:I = 0x8000

.field public static final blacklist FLAG_IS_SYSTEM_WINDOW:I = 0x10000

.field public static final blacklist FLAG_IS_TASK_DISPLAY_AREA:I = 0x2000000

.field public static final blacklist FLAG_IS_TRANSIENT_LAUNCH_OVERLAY:I = 0x8000000

.field public static final blacklist FLAG_IS_UNFOLD_POP_OVER:I = -0x80000000

.field public static final blacklist FLAG_IS_VOICE_INTERACTION:I = 0x10

.field public static final blacklist FLAG_IS_WALLPAPER:I = 0x2

.field public static final blacklist FLAG_MOVED_TO_TOP:I = 0x100000

.field public static final blacklist FLAG_NONE:I = 0x0

.field public static final blacklist FLAG_NO_ANIMATION:I = 0x40000

.field public static final blacklist FLAG_SHOW_WALLPAPER:I = 0x1

.field public static final blacklist FLAG_STARTING_WINDOW_TRANSFER_RECIPIENT:I = 0x8

.field public static final blacklist FLAG_SYNC:I = 0x200000

.field public static final blacklist FLAG_TASK_LAUNCHING_BEHIND:I = 0x80000

.field public static final blacklist FLAG_TRANSLUCENT:I = 0x4

.field public static final blacklist FLAG_WILL_IME_SHOWN:I = 0x800

.field private static final blacklist TAG:Ljava/lang/String; = "TransitionInfo"


# instance fields
.field private blacklist mCanMergeAnimation:Z

.field private blacklist mCanTransferAnimation:Z

.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebugId:I

.field private blacklist mFlags:I

.field private blacklist mHasCancelledRecentsTransitionByMerge:Z

.field private blacklist mOptions:Landroid/window/TransitionInfo$AnimationOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mRemoteAppThread:Landroid/app/IApplicationThread;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private final blacklist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Root;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSeparatedFromCustomDisplayChange:Z

.field private blacklist mShouldAnimateDefaultDisplay:Z

.field private blacklist mTrack:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput p1, p0, Landroid/window/TransitionInfo;->mType:I

    iput p2, p0, Landroid/window/TransitionInfo;->mFlags:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TransitionInfo$Root;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    :cond_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "SHOW_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "IS_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_3

    const-string v1, "IS_INPUT_METHOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x4

    const-string v2, ""

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TRANSLUCENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "STARTING_WINDOW_TRANSFER"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_VOICE_INTERACTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v2

    goto :goto_3

    :cond_a
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_DISPLAY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_4

    :cond_c
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "DISPLAY_HAS_ALERT_WINDOWS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IN_TASK_WITH_EMBEDDED_ACTIVITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_10

    move-object v1, v2

    goto :goto_6

    :cond_10
    move-object v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FILLS_TASK"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_12

    move-object v1, v2

    goto :goto_7

    :cond_12
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_BEHIND_STARTING_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_14

    move-object v1, v2

    goto :goto_8

    :cond_14
    move-object v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_OCCLUDED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_16

    move-object v1, v2

    goto :goto_9

    :cond_16
    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_IS_SYSTEM_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_18

    move-object v1, v2

    goto :goto_a

    :cond_18
    move-object v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_BACK_GESTURE_ANIMATED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1a

    move-object v1, v2

    goto :goto_b

    :cond_1a
    move-object v1, v3

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "NO_ANIMATION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1c

    move-object v4, v2

    goto :goto_c

    :cond_1c
    move-object v4, v3

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TASK_LAUNCHING_BEHIND"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1e

    move-object v4, v2

    goto :goto_d

    :cond_1e
    move-object v4, v3

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "SYNC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_20

    move-object v1, v2

    goto :goto_e

    :cond_20
    move-object v1, v3

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FIRST_CUSTOM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_22

    move-object v1, v2

    goto :goto_f

    :cond_22
    move-object v1, v3

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CONFIG_AT_END"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_10

    :cond_24
    move-object v1, v3

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MOVE_TO_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_29

    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_26

    move-object v1, v2

    goto :goto_11

    :cond_26
    move-object v1, v3

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_ACTIVITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_28

    move-object v1, v2

    goto :goto_12

    :cond_28
    move-object v1, v3

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_TASK_DISPLAY_AREA"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2a

    move-object v1, v2

    goto :goto_13

    :cond_2a
    move-object v1, v3

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "EDGE_EXTENSION_RESTRICTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_2f

    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2c

    move-object v1, v2

    goto :goto_14

    :cond_2c
    move-object v1, v3

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CUSTOM_DISPLAY_CHANGE_TRANSITION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2e

    move-object v1, v2

    goto :goto_15

    :cond_2e
    move-object v1, v3

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FAST_ANIMATION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v1, :cond_31

    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_30

    move-object v1, v2

    goto :goto_16

    :cond_30
    move-object v1, v3

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TRANSIENT_LAUNCH_OVERLAY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_32

    move-object v1, v2

    goto :goto_17

    :cond_32
    move-object v1, v3

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_FIXED_PORTRAIT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_34

    goto :goto_18

    :cond_34
    move-object v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IS_UNFOLD_POP_OVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    goto :goto_0

    :cond_6
    return v3
.end method

.method public static blacklist modeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "CHANGE"

    return-object v0

    :pswitch_2
    const-string v0, "TO_BACK"

    return-object v0

    :pswitch_3
    const-string v0, "TO_FRONT"

    return-object v0

    :pswitch_4
    const-string v0, "CLOSE"

    return-object v0

    :pswitch_5
    const-string v0, "OPEN"

    return-object v0

    :pswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TransitionInfo$Change;)V
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRoot(Landroid/window/TransitionInfo$Root;)V
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRootLeash(ILandroid/view/SurfaceControl;II)V
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/TransitionInfo$Root;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V
    .locals 9

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v8, Landroid/window/TransitionInfo$Root;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist canMergeAnimation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    return v0
.end method

.method public blacklist canTransferAnimation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist findChange(Ljava/util/function/Predicate;)Landroid/window/TransitionInfo$Change;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)",
            "Landroid/window/TransitionInfo$Change;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findRootIndex(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-object v0
.end method

.method public blacklist getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;
    .locals 4

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getDebugId()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    return v0
.end method

.method public blacklist getRemoteAppThread()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRemoteAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRoot(I)Landroid/window/TransitionInfo$Root;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    return-object v0
.end method

.method public blacklist getRootCount()I
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getRootLeash()Landroid/view/SurfaceControl;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "TransitionInfo"

    const-string v2, "Assuming one animation root when there are more."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    invoke-static {v0}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get a root leash from a no-op transition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSplitActivityChangeTransition()Landroid/window/TransitionInfo$Change;
    .locals 4

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getSplitActivityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrack()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    return v0
.end method

.method public blacklist hasCancelledRecentsTransitionByMerge()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mHasCancelledRecentsTransitionByMerge:Z

    return v0
.end method

.method public blacklist hasChangeTransition()Z
    .locals 3

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasChangesOrSideEffects()Z
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x800

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

.method public blacklist hasCustomDisplayChangeTransition()Z
    .locals 3

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isKeyguardGoingAway()Z
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSeparatedFromCustomDisplayChange()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    return v0
.end method

.method public blacklist localRemoteCopy()Landroid/window/TransitionInfo;
    .locals 4

    new-instance v0, Landroid/window/TransitionInfo;

    iget v1, p0, Landroid/window/TransitionInfo;->mType:I

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    iget v1, p0, Landroid/window/TransitionInfo;->mTrack:I

    iput v1, v0, Landroid/window/TransitionInfo;->mTrack:I

    iget v1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput v1, v0, Landroid/window/TransitionInfo;->mDebugId:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-static {v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Root;

    invoke-static {v3}, Landroid/window/TransitionInfo$Root;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Root;)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v1, v0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    iput-object v1, v0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    :cond_4
    return-object v0
.end method

.method public blacklist releaseAllSurfaces()V
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist releaseAnimSurfaces()V
    .locals 4

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmChangeLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-void
.end method

.method public blacklist setCanMergeAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    return-void
.end method

.method public blacklist setCanTransferAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    return-void
.end method

.method public blacklist setDebugId(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mFlags:I

    return-void
.end method

.method public blacklist setHasCancelledRecentsTransitionByMerge()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mHasCancelledRecentsTransitionByMerge:Z

    return-void
.end method

.method public blacklist setRemoteAppThread(Landroid/app/IApplicationThread;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo;->mRemoteAppThread:Landroid/app/IApplicationThread;

    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public blacklist setSeparatedFromCustomDisplayChange(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSeparatedFromCustomDisplayChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist setShouldAnimateDefaultDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    return-void
.end method

.method public blacklist setTrack(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mTrack:I

    return-void
.end method

.method public blacklist setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist shouldAnimateDefaultDisplay()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "\n"

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-static {v6}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " f=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v5, :cond_4

    const-string v5, " opt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, " r=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x2c

    if-ge v5, v6, :cond_6

    if-lez v5, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v6, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Root;

    invoke-static {v6}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Root;

    invoke-static {v7}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmOffset(Landroid/window/TransitionInfo$Root;)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const-string v5, "] c=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    if-lez v5, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v6, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    if-eqz v5, :cond_9

    const-string v5, "] [merge=true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    if-eqz v5, :cond_a

    const-string v5, "] [transfer=true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "] [remote="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    if-eqz v5, :cond_c

    const-string v5, "] [shouldAnimDefault=true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Landroid/window/TransitionInfo;->mHasCancelledRecentsTransitionByMerge:Z

    if-eqz v5, :cond_d

    const-string v5, "] [hasCancelledRentsByKeyguard=true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2
    return-void
.end method
