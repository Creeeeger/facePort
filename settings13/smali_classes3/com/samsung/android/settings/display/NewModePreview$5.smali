.class Lcom/samsung/android/settings/display/NewModePreview$5;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    rsub-int/lit8 p2, p2, 0x4

    .line 419
    iget-object p3, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p3}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x2

    const-string v1, "sec_display_preset_index"

    const/4 v2, 0x0

    invoke-static {p3, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change preset : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ModePreview"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    move-result v0

    const/16 v3, 0x1d1f

    int-to-long v4, p2

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 424
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eq p3, p2, :cond_1

    const/16 p0, 0x29

    .line 427
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 391
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 394
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_expand_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmProgressExpandAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_shrink_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 400
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_fade_in_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 401
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_fade_out_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmThumbFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 403
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_tick_fade_in_animation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmTickFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 404
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_tick_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method
