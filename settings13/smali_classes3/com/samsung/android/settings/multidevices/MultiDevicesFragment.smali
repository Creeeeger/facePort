.class public Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "MultiDevicesFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDualDisplayState:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static bridge synthetic -$$Nest$smappendAutoSwitchBudsRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->appendAutoSwitchBudsRaw(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smappendQuickShareRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->appendQuickShareRaw(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smappendSmartThingsRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->appendSmartThingsRaw(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 224
    new-instance v0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment$1;

    sget v1, Lcom/android/settings/R$xml;->sec_multi_deivces:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static appendAutoSwitchBudsRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v1, "autoswitch_setting"

    .line 274
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 275
    sget v1, Lcom/android/settings/R$string;->autoswitch_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 276
    sget v1, Lcom/android/settings/R$string;->autoswitch_search_word:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 277
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static appendQuickShareRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 254
    sget v0, Lcom/android/settings/R$string;->quickshare_title:I

    .line 256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.app.sharelive"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 257
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "com.samsung.android.app.sharelive.supportChinaP2p"

    const/4 v3, 0x0

    .line 258
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget v0, Lcom/android/settings/R$string;->quickshare_title_china:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "MultiDevicesFragment"

    const-string v2, "PackageManager could not find QuickShare"

    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p0}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "quickshare_settings"

    .line 266
    iput-object v0, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 267
    sget v0, Lcom/android/settings/R$string;->sec_multi_devices_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 268
    sget v0, Lcom/android/settings/R$string;->quickshare_keywords:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 269
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static appendSmartThingsRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MultiDevicesFragment"

    const-string v1, "appendSmartThingsRaw: "

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v1, "smartthings_settings"

    .line 247
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 248
    invoke-static {p0}, Lcom/samsung/android/settings/multidevices/SmartThingsPreferenceController;->getAppTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 249
    sget v1, Lcom/android/settings/R$string;->smartthings_keywords:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 250
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getAndroidAutoTile(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile;
    .locals 7

    const-string v0, "MultiDevicesFragment"

    const-string v1, "getAndroidAutoTile: "

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 161
    invoke-virtual {v1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.device"

    .line 163
    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "dashboardCategory is Null...return NULL"

    .line 165
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 168
    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 170
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.projection.gearhead"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "update"

    const-string v5, "update tile"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndroidAutoTile() : Tile Title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndroidAutoTile() : Tile Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndroidAutoTile() : Tile Summary : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile PackageName : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile ComponentName : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile Intent : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile Description : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile order : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndroidAutoTile() : Tile MetaData : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    return-object v3
.end method

.method private isTetherAvailable()Z
    .locals 6

    .line 322
    sget-object p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 323
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 324
    sget-object v2, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mContext:Landroid/content/Context;

    const-string v3, "tethering"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringManager;

    .line 325
    invoke-virtual {v2}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MultiDevicesFragment"

    if-nez v0, :cond_3

    .line 327
    invoke-static {}, Lcom/samsung/android/settings/Rune;->notSupportTetheringHotspot()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "no_config_tethering"

    .line 330
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HasUserRestriction: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mIsSupportTethering: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 333
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsingSPRTetheringConcept()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSPRTetheringEnableStatus(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "SPR Concept"

    .line 334
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    return v1

    .line 328
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSecondaryUser: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " nonSupportTethering: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->notSupportTetheringHotspot()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private setLinkedDataView()V
    .locals 4

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_3

    .line 288
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 290
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->getMetricsCategory()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 294
    sget v1, Lcom/android/settings/R$string;->bluetooth_settings:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v1, "top_level_connections"

    .line 295
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const/4 v0, 0x1

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->isTetherAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->getMetricsCategory()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 304
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.TETHER_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 305
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_tether_settings_title_all:I

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    .line 306
    :cond_1
    :goto_0
    sget v2, Lcom/android/settings/R$string;->tether_settings_title_usb_bluetooth:I

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 310
    :goto_1
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const/4 v0, 0x2

    :cond_2
    if-lez v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 3

    .line 98
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.PREFERENCE_TYPE"

    const-string v2, ""

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPreference type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiDevicesFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PreferenceCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "SecInsetCategoryPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SwitchPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "SwitchPreferenceScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 110
    new-instance p1, Lcom/samsung/android/settings/multidevices/SecMultiDevicesPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/multidevices/SecMultiDevicesPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 104
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_1
    new-instance p1, Lcom/samsung/android/settings/multidevices/SecMultiDevicesSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/multidevices/SecMultiDevicesSwitchPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 108
    :pswitch_2
    new-instance p1, Lcom/samsung/android/settings/multidevices/SecMultiDevicesSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/multidevices/SecMultiDevicesSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25fad89b -> :sswitch_3
        0x350a234f -> :sswitch_2
        0x4bc10d05 -> :sswitch_1
        0x79ac8f19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiDevicesFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2008

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 212
    sget p0, Lcom/android/settings/R$xml;->sec_multi_deivces:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 127
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mDualDisplayState:I

    if-eq v0, p1, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged mDualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mDualDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " // dualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiDevicesFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->setLinkedDataView()V

    .line 134
    iput p1, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mDualDisplayState:I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->mDualDisplayState:I

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->sec_multi_devices_item_start_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->sec_multi_devices_item_image_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p2, p3

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->sec_multi_devices_item_end_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v3, p2

    .line 82
    new-instance p2, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/settings/R$id;->icon_frame:I

    const v5, 0x1020006

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "MultiDevicesFragment"

    const-string v1, "onPreferenceTreeClick: "

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android_auto_connections_settings"

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->getAndroidAutoTile(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p1, "Advf01"

    const-string v0, "Advf_AA"

    .line 199
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v1, "onPreferenceTreeClick: AA Tile is null"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 141
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android_auto_connections_settings"

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/multidevices/SecMultiDevicesPreference;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {v0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->getAndroidAutoTile(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->android_auto_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    sget v2, Lcom/android/settings/R$drawable;->ic_android_auto:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 150
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$color;->Android_Auto_menu_icon_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 151
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->setLinkedDataView()V

    return-void
.end method
