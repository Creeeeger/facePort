.class public Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;
.super Landroidx/preference/Preference;
.source "BluetoothMultiButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;,
        Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;
    }
.end annotation


# instance fields
.field private mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field private mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field private mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mDesc:Ljava/lang/String;

.field private mHighEnabled:Z

.field private mHighIconImg:I

.field private mHighIconLottie:Ljava/lang/String;

.field private mHighIconText:Ljava/lang/String;

.field private mHighText:Ljava/lang/String;

.field private mHighVisible:I

.field private mIsImgButton:Z

.field private mIsLottieButton:Z

.field private mListener:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;

.field private mLowEnabled:Z

.field private mLowIconImg:I

.field private mLowIconLottie:Ljava/lang/String;

.field private mLowIconText:Ljava/lang/String;

.field private mLowText:Ljava/lang/String;

.field private mLowVisible:I

.field private mMidEnabled:Z

.field private mMidIconImg:I

.field private mMidIconLottie:Ljava/lang/String;

.field private mMidIconText:Ljava/lang/String;

.field private mMidText:Ljava/lang/String;

.field private mMidVisible:I

.field private mOption:Landroid/widget/TextView;

.field private mOptionVisible:Z

.field private mhasDesc:Z

.field private selectedPosition:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBtnHigh(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBtnLow(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBtnMid(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomView(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImgButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsImgButton:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLottieButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsLottieButton:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPosition(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputselectedPosition(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallButtonSelectListener(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->callButtonSelectListener(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonStatus(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 78
    sget v0, Lcom/android/settings/R$layout;->sec_bluetooth_preference_multi_button_lottie:I

    sget v1, Lcom/android/settings/R$id;->bluetooth_multi_button:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconImg:I

    .line 39
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconImg:I

    .line 40
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconImg:I

    const-string v1, ""

    .line 41
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconLottie:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconLottie:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconLottie:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconText:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconText:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconText:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighText:Ljava/lang/String;

    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    .line 51
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    .line 53
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowVisible:I

    .line 54
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidVisible:I

    .line 55
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighVisible:I

    .line 56
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDesc:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsImgButton:Z

    .line 58
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsLottieButton:Z

    .line 59
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mhasDesc:Z

    .line 60
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 82
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    .line 83
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    .line 84
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    return-void
.end method

.method private callButtonSelectListener(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;->onButtonSelected(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z

    :cond_0
    return-void
.end method

.method private updateButtonStatus(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private updateButtonUI()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowVisible:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setVisible(I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidVisible:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setVisible(I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighVisible:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setVisible(I)V

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsImgButton:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconImg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconImg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconImg:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsLottieButton:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconLottie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieRes(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconLottie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieRes(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconLottie:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieRes(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initLottieAnimation()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieUpdated(Z)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieUpdated(Z)V

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setLottieUpdated(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mhasDesc:Z

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->option:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOption:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 103
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setOptionVisible(ZLjava/lang/String;)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->low_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 107
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->mid_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 119
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->high_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 131
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonUI()V

    .line 143
    iget p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus(I)V

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

    .line 245
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    goto :goto_0

    .line 242
    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    goto :goto_0

    .line 239
    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    .line 248
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLottieIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowIconLottie:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidIconLottie:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighIconLottie:Ljava/lang/String;

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mIsLottieButton:Z

    return-void
.end method

.method public setOnButtonSelectedListener(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;

    return-void
.end method

.method public setOptionVisible(ZLjava/lang/String;)V
    .locals 1

    .line 266
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOption:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOption:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 167
    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus(I)V

    :cond_0
    return-void
.end method

.method public setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowText:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidText:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighText:Ljava/lang/String;

    return-void
.end method
