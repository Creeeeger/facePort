.class public final Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    if-nez v1, :cond_0

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/lit8 p3, p3, -0xb

    invoke-static {p0, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    add-int/lit8 p2, p2, -0xb

    if-eq v0, p2, :cond_2

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    if-nez v1, :cond_3

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/lit8 p3, p3, -0xb

    invoke-static {p0, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    add-int/lit8 p2, p2, -0xb

    if-eq v0, p2, :cond_5

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    if-nez v1, :cond_6

    if-nez v1, :cond_7

    if-eqz p3, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/lit8 p3, p3, -0xb

    invoke-static {p0, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    add-int/lit8 p2, p2, -0xb

    if-eq v0, p2, :cond_8

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0xb

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1d1d

    int-to-long v2, p1

    const/16 p1, 0x1d1a

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0605d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    const-string/jumbo v0, "sec"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a14

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a2d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a2e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a37

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0xb

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1d1c

    int-to-long v2, p1

    const/16 p1, 0x1d1a

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0605d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    const-string/jumbo v0, "sec"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a1a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a1b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0xb

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1d1b

    int-to-long v2, p1

    const/16 p1, 0x1d1a

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0605d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    const-string/jumbo v0, "sec"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a42

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
