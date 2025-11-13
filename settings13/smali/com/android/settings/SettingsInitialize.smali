.class public Lcom/android/settings/SettingsInitialize;
.super Landroid/content/BroadcastReceiver;
.source "SettingsInitialize.java"


# direct methods
.method public static synthetic $r8$lambda$9_4WacznxfY29UIkkpfvx7iR3Ms(Lcom/android/settings/SettingsInitialize;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsInitialize;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private enableBluetoothCastTile(Landroid/content/pm/PackageManager;)V
    .locals 2

    .line 167
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 168
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.bluetooth.BluetoothCastTile"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p1, p0, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method private enableTwoPaneDeepLinkActivityIfNecessary(Landroid/content/pm/PackageManager;Landroid/content/Context;)V
    .locals 4

    .line 205
    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    invoke-direct {p0, p2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/search/SearchStateReceiver;

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-static {p2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 213
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/window/embedding/SplitController;->isSplitSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    .line 218
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTwoPaneDeepLinkActivityIfNecessary() enableState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p1, p0, p2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 221
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsInitialize;->refreshExistingShortcuts(Landroid/content/Context;)V

    return-void
.end method

.method private managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .locals 8

    if-eqz p4, :cond_4

    .line 88
    invoke-virtual {p4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Setting up intent forwarding for managed profile."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Settings"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget p3, p4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    .line 97
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.DEFAULT"

    .line 98
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2c1

    .line 102
    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 104
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    .line 106
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 107
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    const-string v7, "com.android.settings.PRIMARY_PROFILE_CONTROLLED"

    .line 109
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    iget v6, p4, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SettingsInitialize;->shouldForwardForSecureFolder(ILjava/util/Iterator;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 115
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget v5, p4, Landroid/content/pm/UserInfo;->id:I

    iget v6, p4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p2, v4, v5, v6, v3}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_3
    new-instance p0, Landroid/content/ComponentName;

    const-class p3, Lcom/android/settings/Settings;

    invoke-direct {p0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {p2, p0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 126
    new-instance p0, Landroid/content/ComponentName;

    const-class p3, Lcom/android/settings/Settings$CreateShortcutActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p2, p0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldForwardForSecureFolder(ILjava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    :goto_0
    move p0, p1

    .line 143
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->shouldForwardSettingIntentForSecureFolder(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    move p1, p0

    :cond_2
    return p1
.end method

.method private webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance p0, Landroid/content/ComponentName;

    const-string p1, "com.android.settings"

    const-string v0, "com.android.settings.WebViewImplementation"

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 159
    :goto_0
    invoke-virtual {p2, p0, p1, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/settings/SettingsInitialize;->managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 80
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/SettingsInitialize;->webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V

    .line 81
    invoke-direct {p0, v1}, Lcom/android/settings/SettingsInitialize;->enableBluetoothCastTile(Landroid/content/pm/PackageManager;)V

    .line 82
    new-instance p2, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsInitialize;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 83
    invoke-direct {p0, v1, p1}, Lcom/android/settings/SettingsInitialize;->enableTwoPaneDeepLinkActivityIfNecessary(Landroid/content/pm/PackageManager;Landroid/content/Context;)V

    return-void
.end method

.method refreshExistingShortcuts(Landroid/content/Context;)V
    .locals 6

    .line 179
    const-class p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 180
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 183
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x14000000

    .line 187
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "change_home"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Settings"

    const-string v5, "replace change_home shortcut target component to PermissionController"

    .line 190
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.google.android.permissioncontroller"

    const-string v5, "com.android.permissioncontroller.role.ui.DefaultAppActivity"

    .line 191
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.ROLE_NAME"

    const-string v5, "android.app.role.HOME"

    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_1
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 199
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    return-void
.end method
