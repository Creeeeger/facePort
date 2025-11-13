.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroidx/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG:Z

.field private static mClickable:Z

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mChildId:J

.field private mContactImage:Landroid/graphics/drawable/Drawable;

.field private mIsBtScanDialog:Z

.field private mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUriString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfputmClickable(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    const/high16 v0, -0x80000000

    .line 79
    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/4 v0, 0x1

    .line 93
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mUriString:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContactImage:Landroid/graphics/drawable/Drawable;

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mChildId:J

    .line 105
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 106
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 108
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    .line 110
    invoke-virtual {p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerSemCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;)V

    .line 113
    sget p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 p2, -0x80000000

    if-ne p0, p2, :cond_0

    .line 114
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x1010033

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    sput p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 1

    .line 271
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 273
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 71
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 257
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public getChildId()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mChildId:J

    return-wide v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 350
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object p0

    .line 357
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

    .line 266
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    const-string v0, "bt_checkbox"

    .line 215
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const v1, 0x1020016

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->bluetooth_preference_text_size_tablet_tall:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 228
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 229
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$style;->BluetoothDeviceConnectedHighlight:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 236
    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    .line 237
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 238
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 5

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClicked :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDevicePreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DevPref -- onClicked :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedForGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_bdsc:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->detail_bluetooth_bdsc_connect_to_pair:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling disconnect device with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 299
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_bdsc:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->detail_bluetooth_bdsc_pair_to_connect:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_bdsc:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->detail_bluetooth_bdsc_unpair_to_connect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "("

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 310
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "[^0-9a-zA-Z ]"

    const-string v3, ""

    .line 313
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "ETC"

    .line 318
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_setting_parse_available_device_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    :cond_5
    :goto_1
    return-void
.end method

.method onClickedForHeadset()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 333
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterSemCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;)V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public semOnDeviceAttributesChanged(Z)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceAttributesChanged :: Device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBonded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mIsOnProgressAddVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevicePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    :goto_0
    return-void
.end method

.method public semOnDeviceBondStateChanged(II)V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semOnDeviceBondStateChanged :: Device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDevicePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    const/high16 p1, -0x80000000

    if-eq p2, p1, :cond_4

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "semOnDeviceBondStateChanged :: reason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_restored:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 189
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_carkit:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_remote_down:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_reject:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_auth:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 204
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    .line 207
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setChildId(J)V
    .locals 0

    .line 361
    iput-wide p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mChildId:J

    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
