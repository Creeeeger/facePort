.class public final Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mClickable:Z

.field public static sDimAlpha:I


# instance fields
.field public final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

.field public mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    const/high16 v0, -0x80000000

    sput v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->sDimAlpha:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mClickable:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    iget-object p3, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter p3

    :try_start_0
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->sDimAlpha:I

    const/high16 p2, -0x80000000

    if-ne p0, p2, :cond_0

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x1010033

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    sput p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->sDimAlpha:I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final compareTo(Landroidx/preference/Preference;)I
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u200e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

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

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f150200

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mClickable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mClickable:Z

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final onPrepareForRemoval()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final semOnDeviceAttributesChanged()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDeviceAttributesChanged: Device = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBonded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const-string v2, "SecBluetoothDevicePreference"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->getSelectedAdapter(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    return-void
.end method
