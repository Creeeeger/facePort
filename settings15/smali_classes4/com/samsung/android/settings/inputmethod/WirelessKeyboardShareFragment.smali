.class public Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final mBlueToothReceiver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mContext:Landroid/content/Context;

.field public mIm:Landroid/hardware/input/InputManager;

.field public mIsBluetoothOn:Z

.field public mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

.field public mProgressItem:Landroid/view/MenuItem;

.field public final mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

.field public mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

.field public mSwitchPosition:I

.field public mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

.field public mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIsBluetoothOn:Z

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSwitchPosition:I

    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    const p1, 0x7f0d0aa3

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string/jumbo v1, "remote_device1"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string/jumbo v1, "remote_device2"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string/jumbo v1, "remote_device3"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    move v0, p1

    :goto_0
    if-gt v0, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v1, v1, v0

    new-instance v4, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const-string/jumbo v0, "registerBTReceiver"

    const-string v1, "WirelessKeyboardShareFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "create Observer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    const-string/jumbo v0, "registerSettingsObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wireless_keyboard_setting_repository"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_1
    new-instance p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManagerGlobal;->registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->updateWirelessKeyboardShareStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "pref_app_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a11b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0601d4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const v4, 0x7f080928

    invoke-virtual {p1, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const v1, 0x7f1437be

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "%s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    const v0, 0x7f142b8c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0026

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0bca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WirelessKeyboardShareFragment"

    const-string/jumbo v1, "unregisterSettingsObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$SettingsObserver;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus$1()V

    return-void
.end method

.method public final progressVisibled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f0d0aa6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final remoteDeviceEnabled(Z)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendMessageSwitchUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final syncStatus$1()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getHostList()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    move v1, v5

    :goto_0
    if-gt v1, v2, :cond_4

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v3

    :goto_1
    invoke-virtual {p0, v1, v4, v6}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->updateDefaultRemoteDeviceInfo(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_2
    if-gt v1, v2, :cond_3

    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v1, v3, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->updateDefaultRemoteDeviceInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v8}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f141e94

    invoke-virtual {v10, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v8}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v9, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v9, v9, v1

    iput-boolean v8, v9, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v1

    iput v1, v8, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIndex:I

    iput-object v6, v8, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    iput-boolean v5, v8, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    invoke-virtual {v8, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v1

    new-instance v7, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    iput-object v7, v6, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

    goto :goto_3

    :catch_0
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v1

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    :cond_5
    return-void
.end method

.method public final updateDefaultRemoteDeviceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f141e94

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v0, v0, p1

    iput-boolean v1, v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object p0, p0, p1

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
