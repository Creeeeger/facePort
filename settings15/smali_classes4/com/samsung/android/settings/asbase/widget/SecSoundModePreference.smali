.class public Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

.field public final mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

.field public final mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

.field public mCustomView:Landroid/view/View;

.field public mDivider2View:Landroid/view/View;

.field public mHighEnabled:Z

.field public mHighText:Ljava/lang/String;

.field public final mHighVisible:I

.field public final mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

.field public mIsInit:Z

.field public mListener:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

.field public mLowEnabled:Z

.field public mLowText:Ljava/lang/String;

.field public final mLowVisible:I

.field public mMidEnabled:Z

.field public mMidText:Ljava/lang/String;

.field public mMidVisible:I

.field public mOption:Landroid/widget/TextView;

.field public final mOptionText:Ljava/lang/String;

.field public mOptionVisible:Z

.field public mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0d0957

    const v1, 0x7f0a0eb3

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOptionText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowVisible:I

    iput v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidVisible:I

    iput v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighVisible:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOptionVisible:Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIsInit:Z

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIsInit:Z

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v4, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v5, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    iget-object v6, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIsInit:Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0af3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOption:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOptionVisible:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOptionVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOptionText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mOption:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0547

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mDivider2View:Landroid/view/View;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidVisible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0907

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a096d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0759

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    return-void
.end method

.method public final setButtonEnabled(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidEnabled:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowEnabled:Z

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->setButtonEnabled(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->setButtonEnabled(IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->setButtonEnabled(IZ)V

    return-void
.end method

.method public final updateButtonStatus(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v3, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    iget-object v4, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    :goto_0
    return-void
.end method
