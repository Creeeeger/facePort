.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "SecBluetoothHearingAidVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mScreenId:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    .line 45
    sget p1, Lcom/android/settings/R$layout;->sec_bluetooth_preference_asha_slider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder :: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothHearingAidVolumePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020531

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v0, 0x1020006

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mIconView:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_bluetooth_icon_primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;

    if-eqz p1, :cond_1

    .line 74
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;->getGain(I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged :: progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromTouch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothHearingAidVolumePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 88
    iget p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-interface {v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;->getGain(I)I

    move-result p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mScreenId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_hearing_volume:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p1, p3, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;ILjava/lang/String;J)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;->setIndependentVolume(II)V

    return-void
.end method

.method public setCallBack(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;

    return-void
.end method

.method public setVolumeKey(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    return-void
.end method
