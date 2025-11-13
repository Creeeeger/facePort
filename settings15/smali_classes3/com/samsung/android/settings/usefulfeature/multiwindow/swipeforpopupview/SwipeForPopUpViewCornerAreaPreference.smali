.class public Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCornerAreaSeekBar:Landroid/widget/SeekBar;

.field public mCornerAreaTitle:Landroid/widget/TextView;

.field public mIndicatorView:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;

.field public mIsSwitchEnable:Z

.field public mLeftText:Landroid/widget/TextView;

.field public mRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0d7c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0d7a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mLeftText:Landroid/widget/TextView;

    const v0, 0x7f0a0d6a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mRightText:Landroid/widget/TextView;

    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mIsSwitchEnable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mLeftText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mRightText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->updateProgress$3()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mLeftText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mRightText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mIsSwitchEnable:Z

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->updateProgress$3()V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mIndicatorView:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getCornerGestureCustomValue(I)I

    move-result p2

    iget-object v0, p3, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->setSize(I)V

    iget-object p3, p3, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->setSize(I)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "freeform_corner_gesture_level"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mIndicatorView:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->setSize(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->setSize(I)V

    :cond_0
    return-void
.end method

.method public final updateProgress$3()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_corner_gesture_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaPreference;->mCornerAreaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method
