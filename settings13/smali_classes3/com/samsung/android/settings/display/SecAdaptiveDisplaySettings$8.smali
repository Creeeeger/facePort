.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->initColorBalance()V
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

    .line 429
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 432
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    const p2, -0xa952af

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 436
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 439
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 442
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressGreenExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressGreenExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 445
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_end:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 447
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/settings/R$color;->sec_display_color_balance_label_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 449
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmTickGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 453
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressGreenShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmProgressGreenShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 456
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmThumbGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 459
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_green_expand_animation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmProgressGreenExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_green_shrink_animation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmProgressGreenShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 462
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_green_fade_in_animation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmThumbGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 463
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_green_fade_out_animation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmThumbGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 465
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_green_fade_in_animation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmTickGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 466
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_green_fade_out_animation:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fputmTickGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_2
    :goto_0
    return v0
.end method
