.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v1, v3

    goto :goto_1

    :sswitch_0
    const-string v4, "com.samsung.android.app.screenrecorder.off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "android.intent.action.COLLAPSE_FLEX_PANEL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.samsung.android.app.screenrecorder.on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :sswitch_4
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    goto :goto_2

    :pswitch_1
    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :pswitch_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "F004"

    const-string v0, "a"

    invoke-static {p2, v0, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->closeOperation()V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isClockActivity(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "setVolumeProgress streamType : "

    const-string v2, ", newVolume : "

    const-string v3, ", oldVolume : "

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BrightnessVolumeView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeSeekBar(I)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeIcon(I)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_4
        -0x3011414a -> :sswitch_3
        -0x1d739ef5 -> :sswitch_2
        -0x1808c879 -> :sswitch_1
        0x2de91778 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
