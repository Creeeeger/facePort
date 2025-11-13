.class public final Lcom/samsung/android/settings/display/NewModePreview$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const p2, 0x7f080a2f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a48

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a49

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a30

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a31

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a4f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const p2, 0x7f080a50

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
