.class public final Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothCastDevicePreference.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG:Z

.field private static mClickable:Z

.field private static sDimAlpha:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

.field private mChildId:J

.field private mContactImage:Landroid/graphics/drawable/Drawable;

.field private mIsBtScanDialog:Z

.field private mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUriString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfputmClickable(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mClickable:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->DBG:Z

    const/high16 v0, -0x80000000

    .line 41
    sput v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->sDimAlpha:I

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mClickable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    const-class v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mIsBtScanDialog:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mUriString:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mContactImage:Landroid/graphics/drawable/Drawable;

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mChildId:J

    .line 60
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 63
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    iput-boolean p3, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mIsBtScanDialog:Z

    .line 65
    sget p3, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->sDimAlpha:I

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 66
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010033

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 68
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sput p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->sDimAlpha:I

    .line 70
    :cond_0
    invoke-virtual {p2, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 1

    .line 141
    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    return p0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    check-cast p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->compareTo(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 128
    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    check-cast p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    return-object p0
.end method

.method public getChildId()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mChildId:J

    return-wide v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBtCastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getPrefixName()Ljava/lang/String;

    move-result-object p0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const-string v0, "bt_checkbox"

    .line 90
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 95
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const v1, 0x1020016

    if-eqz v0, :cond_1

    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->bluetooth_preference_text_size_tablet_tall:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$style;->BluetoothDeviceConnectedHighlight:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public onCastDeviceAttributesChanged(Z)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCastDeviceAttributesChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    goto :goto_0

    .line 187
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mClickable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 109
    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mClickable:Z

    .line 110
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 111
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;-><init>(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 4

    .line 151
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastDevice()Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClicked :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- onClicked :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->disconnect()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->connect()V

    :goto_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;)V

    return-void
.end method

.method public setChildId(J)V
    .locals 0

    .line 174
    iput-wide p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mChildId:J

    return-void
.end method
