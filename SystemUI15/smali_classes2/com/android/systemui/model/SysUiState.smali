.class public final Lcom/android/systemui/model/SysUiState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mFlags:J

.field public mFlagsToClear:J

.field public mFlagsToSet:J

.field public final mSceneContainerPlugin:Lcom/android/systemui/model/SceneContainerPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/model/SceneContainerPlugin;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:J

    iput-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:J

    iput-object p1, p0, Lcom/android/systemui/model/SysUiState;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iput-object p2, p0, Lcom/android/systemui/model/SysUiState;->mSceneContainerPlugin:Lcom/android/systemui/model/SceneContainerPlugin;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/model/SysUiState$SysUiStateCallback;->onSystemUiStateChanged(J)V

    return-void
.end method

.method public final commitUpdate(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/model/SysUiState;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SysUiState"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string v1, "Ignoring flag update for display: "

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    iget-wide v3, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:J

    or-long/2addr v3, v1

    iget-wide v5, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:J

    not-long v5, v5

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "SysUiState changed: old=0x"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;-><init>(J)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput-wide v3, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:J

    iput-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:J

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string p2, "SysUiState state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mSysUiStateFlags="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    sget-boolean v2, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    new-instance v2, Ljava/util/StringJoiner;

    const-string/jumbo v3, "|"

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-string/jumbo v3, "screen_pinned"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    const-wide/16 v3, 0x80

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const-string v3, "overview_disabled"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    const-wide/16 v3, 0x100

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const-string v3, "home_disabled"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    const-wide/16 v3, 0x400

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const-string/jumbo v3, "search_disabled"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    const-wide/16 v3, 0x2

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-string v3, "navbar_hidden"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    const-wide/16 v3, 0x4

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    const-string v3, "notif_expanded"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    const-wide/16 v3, 0x800

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    const-string v3, "qs_visible"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    const-wide/16 v3, 0x40

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    const-string v3, "keygrd_visible"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7
    const-wide/16 v3, 0x200

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    const-string v3, "keygrd_occluded"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_8
    const-wide/16 v3, 0x8

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const-string v3, "bouncer_visible"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_9
    const-wide/32 v3, 0x8000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    const-string v3, "dialog_showing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_a
    const-wide/16 v3, 0x10

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    const-string v3, "a11y_click"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    const-wide/16 v3, 0x20

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const-string v3, "a11y_long_click"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_c
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    const-string v3, "disable_gesture_split_invocation"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_d
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    const-string v3, "asst_gesture_constrain"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_e
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    const-string v3, "bubbles_expanded"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_f
    const-wide/32 v3, 0x10000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    const-string v3, "one_handed_active"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_10
    const-wide/32 v3, 0x20000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    const-string v3, "allow_gesture"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    const-wide/32 v3, 0x40000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_12

    const-string v3, "ime_visible"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_12
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    const-string v3, "magnification_overlap"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_13
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    const-string v3, "ime_switcher_showing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_14
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    const-string v3, "device_dozing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_15
    const-wide/32 v3, 0x400000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    const-string v3, "back_disabled"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_16
    const-wide/32 v3, 0x800000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    const-string v3, "bubbles_mange_menu_expanded"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_17
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    const-string/jumbo v3, "vis_win_showing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_18
    const-wide/32 v3, 0x4000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    const-string v3, "freeform_active_in_desktop_mode"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_19
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    const-string v3, "device_dreaming"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1a
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "wakefulness_transition"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1b
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c

    const-string v3, "awake"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1c
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const-string v3, "notif_visible"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1d
    const-wide v3, 0x80000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const-string v3, "keygrd_going_away"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1e
    const-wide v3, 0x100000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    const-string/jumbo v3, "shortcut_helper_showing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1f
    const-wide v3, 0x200000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    const-string/jumbo v3, "touchpad_gestures_disabled"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_20
    const-wide v3, 0x400000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    const-string v3, "game_tools_showing"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_21
    const-wide v3, 0x800000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_22

    const-string v3, "requested_recent_key"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_22
    const-wide v3, 0x1000000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    const-string v3, "requested_home_key"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_23
    const-wide v3, 0x2000000000L

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_24

    const-string v3, "navbar_gone"

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_24
    const-wide v3, 0x4000000000L

    and-long/2addr v0, v3

    cmp-long v0, v0, v5

    if-eqz v0, :cond_25

    const-string v0, "knox_hard_key_intent"

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_25
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    backGestureDisabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    const/4 p2, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(JZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "    assistantGestureDisabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(J)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final setFlag(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/model/SysUiState;->mSceneContainerPlugin:Lcom/android/systemui/model/SceneContainerPlugin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:J

    :goto_0
    return-void
.end method
