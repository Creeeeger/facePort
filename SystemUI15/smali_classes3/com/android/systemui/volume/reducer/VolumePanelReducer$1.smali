.class public abstract synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_INIT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ANIMATION_START:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SCREEN_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_COLLAPSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_REQUESTED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_MIRROR_LINK_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ALL_SOUND_OFF_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_USER_SWITCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ACCESSIBILITY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEND_ACCESSIBILITY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_COVER_STATE_CHAGNED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SETTINGS_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_DO_NOT_DISTURB_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_LE_BROADCASTING_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DUAL_PLAY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_KEY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_TIMEOUT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_HEADSET_CONNECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    return-void
.end method
