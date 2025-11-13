.class Lcom/samsung/android/settings/display/NewModePreview$4;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 342
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 352
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressExpandAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressExpandAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_end:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 356
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmPresetSeekBar(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 366
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_expand_animation:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmProgressExpandAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 367
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_shrink_animation:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmProgressShrinkAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 369
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_fade_in_animation:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmThumbFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_fade_out_animation:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmThumbFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_tick_fade_in_animation:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmTickFadeInAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 373
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_white_balance_tick_fade_out_animation:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmTickFadeOutAnimation(Lcom/samsung/android/settings/display/NewModePreview;Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
