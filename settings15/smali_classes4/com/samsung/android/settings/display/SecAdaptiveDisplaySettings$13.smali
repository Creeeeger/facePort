.class public final Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0xb

    const-string/jumbo p2, "sec_display_temperature_blue"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0xb

    const-string/jumbo p2, "sec_display_temperature_green"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iput-boolean p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0xb

    const-string/jumbo p2, "sec_display_temperature_red"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
