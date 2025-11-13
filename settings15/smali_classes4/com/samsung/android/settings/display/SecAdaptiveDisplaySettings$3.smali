.class public final Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateAdvancedColorBalanceComponents()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateVividnessComponents()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sec_display_temperature_blue"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sec_display_temperature_green"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sec_display_temperature_red"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateAdvancedColorBalanceComponents()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateVividnessComponents()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
