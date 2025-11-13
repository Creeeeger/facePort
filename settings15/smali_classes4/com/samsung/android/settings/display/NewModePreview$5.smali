.class public final Lcom/samsung/android/settings/display/NewModePreview$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    rsub-int/lit8 p2, p2, 0x4

    iget-object p3, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p3, p3, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x2

    const-string/jumbo v1, "sec_display_preset_index"

    const/4 v2, 0x0

    invoke-static {p3, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "change preset : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ModePreview"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    const/16 v0, 0x1d1f

    int-to-long v3, p2

    const/16 v5, 0x1079

    invoke-static {v5, v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eq p3, p2, :cond_1

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v1, 0x7f080a48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v1, 0x7f080a49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v1, 0x7f080a30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v1, 0x7f080a31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v1, 0x7f080a4f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a50

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method
