.class public Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.super Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final handler:Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

.field public final mConnection:Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mDatabaseReset:Z

.field public mIsAccReset:Z

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mResetReceiver:Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

.field public mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

.field public mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    return-void
.end method

.method public static resetSettingsInternal(Landroid/content/Context;)V
    .locals 8

    const-string v0, "GeneralUtils"

    new-instance v1, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/general/ResetSettingsList;->RESET_SETTING_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "Cannot find class: "

    invoke-static {v5, v3, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    :goto_1
    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reset settings start, class name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ResetSettings"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " find field \'RESET_SETTINGS_DATA in "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v3, "RESET_SETTINGS_DATA"

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/general/OnResetSettingsDataListener;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_2
    const-string v3, "Illegal argument when accessing field \'RESET_SETTINGS_DATA\'"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    const-string v3, "Illegal access to field \'RESET_SETTINGS_DATA\'"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    const-string v3, "Security exception for field \'RESET_SETTINGS_DATA\'"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    const-string v3, "Cannot find field \'RESET_SETTINGS_DATA\'"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v4, :cond_0

    invoke-interface {v4, p0}, Lcom/samsung/android/settings/general/OnResetSettingsDataListener;->resetSettings(Landroid/content/Context;)V

    invoke-interface {v4, p0, v1}, Lcom/samsung/android/settings/general/OnResetSettingsDataListener;->loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final doSoftReset()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    const-string v2, "ResetSettings"

    const-string v3, "bind resetAccessibilitySettingsOnly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "accessibility_prefs"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "user_shortcut_type"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v0, v3, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.datamanager.DataManagerService"

    invoke-static {v1, v2}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142b69

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1235

    return p0
.end method

.method public final getResetButtonTitle()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    if-eqz v0, :cond_0

    const v0, 0x7f141ebd

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const v0, 0x7f1416c1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f142677

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    const-string p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    new-instance v1, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetReceiver:Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    const-string v3, "com.sec.android.settings.permission.SOFT_RESET"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event_type"

    const-string v1, "Q025"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_accsettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-boolean p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0d0974

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0980

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetReceiver:Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public final onResetButtonClick()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const-wide/16 v1, 0x0

    const/16 v3, 0x1235

    if-eqz v0, :cond_0

    const/16 v0, 0x123b

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1236

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    return-void
.end method

.method public final registerAccCallbackToService()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;I)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final resetSettingsExternal(Landroid/content/Context;)V
    .locals 7

    const-string v0, "ResetSettings"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.action.RESET_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResetSettings Provider Call, URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_5
    return-void

    :cond_6
    :try_start_2
    const-string/jumbo v1, "reset_data_settings"

    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "getBundle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_7
    const-string v1, "Bundle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_3
    :try_start_3
    const-string v4, "can not call the provider"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_2

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_8
    throw p0

    :cond_9
    return-void
.end method
