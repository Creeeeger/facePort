.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_red"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 686
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 687
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 688
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    add-int/lit8 p3, p3, -0xb

    .line 687
    invoke-static {p0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    add-int/lit8 p2, p2, -0xb

    if-eq v0, p2, :cond_2

    const/16 p0, 0x29

    .line 692
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V

    .line 648
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0xb

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sec_display_temperature_red"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->getMetricsCategory()I

    move-result v0

    int-to-long v2, p1

    const/16 p1, 0x1d1b

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmRedLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->sec_display_color_balance_label_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmRedLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "sec-roboto-light"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmRedLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 656
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 657
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 659
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressRedShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressRedShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 662
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 665
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_red_expand_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmProgressRedExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 666
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_red_shrink_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmProgressRedShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 668
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_red_fade_in_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmThumbRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 669
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_red_fade_out_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmThumbRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 671
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_red_fade_in_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmTickRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 672
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_red_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmTickRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method
