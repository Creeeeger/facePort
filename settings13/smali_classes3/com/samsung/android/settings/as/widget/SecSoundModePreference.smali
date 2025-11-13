.class public Lcom/samsung/android/settings/as/widget/SecSoundModePreference;
.super Landroidx/preference/Preference;
.source "SecSoundModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;,
        Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;
    }
.end annotation


# instance fields
.field private mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

.field private mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

.field private mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mDesc:Ljava/lang/String;

.field private mHasDesc:Z

.field private mHighEnabled:Z

.field private mHighText:Ljava/lang/String;

.field private mHighVisible:I

.field private mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

.field private mIsInit:Z

.field private mListener:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;

.field private mLowEnabled:Z

.field private mLowText:Ljava/lang/String;

.field private mLowVisible:I

.field private mMidEnabled:Z

.field private mMidText:Ljava/lang/String;

.field private mMidVisible:I

.field private mOption:Landroid/widget/TextView;

.field private mOptionText:Ljava/lang/String;

.field private mOptionVisible:Z

.field private mSelectedPosition:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomView(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedPosition(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mSelectedPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedPosition(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mSelectedPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallButtonSelectListener(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->callButtonSelectListener(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonStatus(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->updateButtonStatus(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 66
    sget v0, Lcom/android/settings/R$layout;->sec_preference_sound_mode:I

    sget v1, Lcom/android/settings/R$id;->sound_mode:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    .line 35
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionText:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowEnabled:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighEnabled:Z

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowVisible:I

    .line 43
    iput v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidVisible:I

    .line 44
    iput v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighVisible:I

    .line 45
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mDesc:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHasDesc:Z

    .line 47
    iput-boolean v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionVisible:Z

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIsInit:Z

    .line 70
    new-instance p1, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    .line 71
    new-instance p1, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    .line 72
    new-instance p1, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    .line 73
    new-instance p1, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    return-void
.end method

.method private callButtonSelectListener(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;->onButtonSelected(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)Z

    :cond_0
    return-void
.end method

.method private startModeChangeAnimation(Z)V
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmWaveS(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmWaveL(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v5

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private updateButtonStatus(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v2}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v3}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmSplashView(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->startVibrationAnimation()V

    .line 151
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    .line 140
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 141
    :cond_7
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->startModeChangeAnimation(Z)V

    .line 143
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private updateButtonUI()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowVisible:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setVisible(I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidVisible:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setVisible(I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighVisible:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->setVisible(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 78
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnLow:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnHigh:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 83
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIsInit:Z

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->startModeChangeAnimation(Z)V

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIsInit:Z

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 90
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHasDesc:Z

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->option:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOption:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 97
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setOptionVisible(ZLjava/lang/String;)V

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->low_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 101
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$1;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->mid_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->high_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 123
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$3;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->updateButtonUI()V

    .line 134
    iget p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->updateButtonStatus(I)V

    return-void
.end method

.method public setButtonEnabled(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighEnabled:Z

    goto :goto_0

    .line 208
    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidEnabled:Z

    goto :goto_0

    .line 205
    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowEnabled:Z

    .line 214
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setButtonVisible(II)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighVisible:I

    goto :goto_0

    .line 223
    :cond_1
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidVisible:I

    goto :goto_0

    .line 220
    :cond_2
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowVisible:I

    :goto_0
    return-void
.end method

.method public setOnButtonSelectedListener(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;

    return-void
.end method

.method public setOptionVisible(ZLjava/lang/String;)V
    .locals 1

    .line 232
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionVisible:Z

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOption:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 236
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionText:Ljava/lang/String;

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOptionText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mOption:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 241
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 167
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mSelectedPosition:I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->updateButtonStatus(I)V

    :cond_0
    return-void
.end method

.method public setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    return-void
.end method

.method public startVibrationAnimation()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mBtnMid:Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->-$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateIconUI()V
    .locals 1

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->mIsInit:Z

    return-void
.end method
