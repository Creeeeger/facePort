.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

.field public final mContext:Landroid/content/Context;

.field public final mScreenId:Ljava/lang/String;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mVolumeKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0848

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f141fc6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBindViewHolder :: key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothHearingAidVolumePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06056e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->getGain(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onProgressChanged :: progress = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromTouch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothHearingAidVolumePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->getGain(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mScreenId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140edc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, p3, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    iget-object p3, p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p3, :cond_9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p3, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, v0}, Landroid/bluetooth/BluetoothHearingAid;->setIndependentGain(II)V

    :goto_1
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, v1}, Landroid/bluetooth/BluetoothHearingAid;->setIndependentGain(II)V

    goto :goto_2

    :cond_5
    iget-object p0, p3, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2, v1}, Landroid/bluetooth/BluetoothHearingAid;->setIndependentGain(II)V

    goto :goto_2

    :cond_7
    iget-object p0, p3, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p2, v0}, Landroid/bluetooth/BluetoothHearingAid;->setIndependentGain(II)V

    :cond_9
    :goto_2
    return-void
.end method
