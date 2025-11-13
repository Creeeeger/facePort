.class public final Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "sec"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    const p2, -0xc1870a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a2f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0605d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a13

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a14

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a2d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a2e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a36

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a37

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_2
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "sec"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    const p2, -0xa952af

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a2f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0605d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a1a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a1b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a32

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a33

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a38

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a39

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_5
    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "sec"

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    const p2, -0x23d0c2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a2f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0605d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a21

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a22

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a34

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a35

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f080a41

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const p2, 0x7f080a42

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_8
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
