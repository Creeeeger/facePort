.class public final Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field public static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field static sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

.field static sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    const-string v23, "odi_captions_tooltip_click"

    const-string/jumbo v24, "slider_touch_tracking"

    const-string/jumbo v1, "show_dialog"

    const-string v2, "dismiss_dialog"

    const-string v3, "active_stream_changed"

    const-string v4, "expand"

    const-string v5, "key"

    const-string v6, "collection_started"

    const-string v7, "collection_stopped"

    const-string v8, "icon_click"

    const-string/jumbo v9, "settings_click"

    const-string/jumbo v10, "touch_level_changed"

    const-string v11, "level_changed"

    const-string v12, "internal_ringer_mode_changed"

    const-string v13, "external_ringer_mode_changed"

    const-string/jumbo v14, "zen_mode_changed"

    const-string/jumbo v15, "suppressor_changed"

    const-string v16, "mute_changed"

    const-string/jumbo v17, "touch_level_done"

    const-string/jumbo v18, "zen_mode_config_changed"

    const-string/jumbo v19, "ringer_toggle"

    const-string/jumbo v20, "show_usb_overheat_alarm"

    const-string v21, "dismiss_usb_overheat_alarm"

    const-string v22, "odi_captions_click"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    const-string v11, "csd_warning_timeout"

    const-string/jumbo v12, "posture_changed"

    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "touch_outside"

    const-string/jumbo v3, "volume_controller"

    const-string/jumbo v4, "timeout"

    const-string/jumbo v5, "screen_off"

    const-string/jumbo v6, "settings_clicked"

    const-string v7, "done_clicked"

    const-string v8, "a11y_stream_changed"

    const-string v9, "output_chooser"

    const-string/jumbo v10, "usb_temperature_below_threshold"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    const-string/jumbo v0, "remote_volume_changed"

    const-string/jumbo v1, "usb_temperature_above_threshold"

    const-string/jumbo v2, "unknown"

    const-string/jumbo v3, "volume_changed"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v2, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    const-string v0, ""

    goto/16 :goto_11

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    if-nez v2, :cond_4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x56a

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ODI_CAPTIONS_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ODI_CAPTIONS_TOOLTIP_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :cond_4
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "silent"

    const-string v4, "normal"

    const-string/jumbo v5, "vibrate"

    const-string/jumbo v6, "unknown"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0xcf

    sget-object v10, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    sget-object v11, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    const/16 v12, 0x5b1

    const-string v13, " keyguard="

    const/16 v14, 0x20

    const/4 v15, 0x3

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_STARTED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_STOPPED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_1
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_2
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v7

    check-cast v0, Ljava/lang/Boolean;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "dismiss_usb_overheat_alarm"

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    aget-object v1, v1, v16

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v11, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_3
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v7

    check-cast v0, Ljava/lang/Boolean;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "show_usb_overheat_alarm"

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    aget-object v1, v1, v16

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v10, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_4
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x569

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_8

    if-eq v9, v7, :cond_7

    if-eq v9, v8, :cond_6

    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_3

    :cond_6
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_3

    :cond_7
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_3

    :cond_8
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_3
    invoke-interface {v1, v9}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_9

    move-object v2, v6

    goto :goto_4

    :cond_9
    move-object v2, v4

    goto :goto_4

    :cond_a
    move-object v2, v5

    :cond_b
    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_5
    array-length v0, v1

    if-le v0, v7, :cond_18

    aget-object v0, v1, v7

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xd1

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_5
    invoke-interface {v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_9

    :pswitch_6
    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v1, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_7
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_f

    if-eq v1, v8, :cond_e

    if-eq v1, v15, :cond_d

    goto :goto_6

    :cond_d
    const-string v6, "alarms"

    goto :goto_6

    :cond_e
    const-string v6, "no_interruptions"

    goto :goto_6

    :cond_f
    const-string v6, "important_interruptions"

    goto :goto_6

    :cond_10
    const-string v6, "off"

    :goto_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_14

    if-eq v0, v7, :cond_13

    if-eq v0, v8, :cond_12

    if-eq v0, v15, :cond_11

    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    goto :goto_7

    :cond_11
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    goto :goto_7

    :cond_12
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    goto :goto_7

    :cond_13
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    goto :goto_7

    :cond_14
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    :goto_7
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_10

    :pswitch_8
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v9, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v10, 0xd5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    :pswitch_9
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_17

    if-eq v0, v7, :cond_16

    if-eq v0, v8, :cond_15

    move-object v2, v6

    goto :goto_8

    :cond_15
    move-object v2, v4

    goto :goto_8

    :cond_16
    move-object v2, v5

    :cond_17
    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_18
    :goto_9
    :pswitch_a
    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v1, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_b
    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xd4

    invoke-virtual {v2, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_1b

    if-eq v4, v8, :cond_1a

    if-eq v4, v15, :cond_19

    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_a

    :cond_19
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_a

    :cond_1a
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_a

    :cond_1b
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_a
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_1d

    if-eq v0, v8, :cond_1c

    if-eq v0, v15, :cond_1e

    const-string/jumbo v1, "unknown_state_"

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_1c
    const-string v5, "mute"

    goto :goto_b

    :cond_1d
    const-string/jumbo v5, "unmute"

    :cond_1e
    :goto_b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_c
    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xd3

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1f

    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_c

    :cond_1f
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_c
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_d
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v4, 0xd0

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_d

    :cond_20
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    :goto_d
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_e
    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xd2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_f
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_27

    if-eq v2, v8, :cond_26

    if-eq v2, v15, :cond_25

    const/4 v4, 0x4

    if-eq v2, v4, :cond_24

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23

    const/4 v4, 0x7

    if-eq v2, v4, :cond_22

    const/16 v4, 0x9

    if-eq v2, v4, :cond_21

    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_21
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_22
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_23
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_24
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_25
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_26
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    goto :goto_e

    :cond_27
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    :goto_e
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v11, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_10
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    array-length v0, v1

    if-le v0, v7, :cond_2b

    aget-object v0, v1, v16

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "volume_from_keyguard"

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_2a

    if-eq v4, v8, :cond_29

    if-eq v4, v15, :cond_28

    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    goto :goto_f

    :cond_28
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    goto :goto_f

    :cond_29
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    goto :goto_f

    :cond_2a
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    :goto_f
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v10, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
