.class final Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spa/SettingsSpaEnvironment;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/SettingsSpaEnvironment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;->this$0:Lcom/android/settings/spa/SettingsSpaEnvironment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    iget-object v2, v0, Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;->this$0:Lcom/android/settings/spa/SettingsSpaEnvironment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/AllFilesAccessAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/AllFilesAccessAppListProvider;

    sget-object v4, Lcom/android/settings/spa/app/specialaccess/DisplayOverOtherAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/DisplayOverOtherAppsAppListProvider;

    sget-object v5, Lcom/android/settings/spa/app/specialaccess/MediaManagementAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/MediaManagementAppsAppListProvider;

    sget-object v6, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppListProvider;

    sget-object v7, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsAppListProvider;

    sget-object v8, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentAppListProvider;

    sget-object v9, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;

    sget-object v10, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListProvider;

    sget-object v11, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListProvider;

    sget-object v12, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/WifiControlAppListProvider;

    sget-object v13, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsProvider;

    sget-object v14, Lcom/android/settings/spa/app/specialaccess/LongBackgroundTasksAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/LongBackgroundTasksAppListProvider;

    sget-object v15, Lcom/android/settings/spa/app/specialaccess/TurnScreenOnAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/TurnScreenOnAppsAppListProvider;

    filled-new-array/range {v3 .. v15}, [Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    iget-object v0, v0, Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;->this$0:Lcom/android/settings/spa/SettingsSpaEnvironment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/spa/home/HomePageProvider;->INSTANCE:Lcom/android/settings/spa/home/HomePageProvider;

    sget-object v4, Lcom/android/settings/spa/app/AppsMainPageProvider;->INSTANCE:Lcom/android/settings/spa/app/AppsMainPageProvider;

    sget-object v5, Lcom/android/settings/spa/app/AllAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/app/AllAppListPageProvider;

    sget-object v6, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    sget-object v7, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;

    sget-object v8, Lcom/android/settings/spa/notification/NotificationMainPageProvider;->INSTANCE:Lcom/android/settings/spa/notification/NotificationMainPageProvider;

    sget-object v9, Lcom/android/settings/spa/notification/AppListNotificationsPageProvider;->INSTANCE:Lcom/android/settings/spa/notification/AppListNotificationsPageProvider;

    sget-object v10, Lcom/android/settings/spa/system/SystemMainPageProvider;->INSTANCE:Lcom/android/settings/spa/system/SystemMainPageProvider;

    sget-object v11, Lcom/android/settings/spa/system/LanguageAndInputPageProvider;->INSTANCE:Lcom/android/settings/spa/system/LanguageAndInputPageProvider;

    sget-object v12, Lcom/android/settings/spa/system/AppLanguagesPageProvider;->INSTANCE:Lcom/android/settings/spa/system/AppLanguagesPageProvider;

    sget-object v13, Lcom/android/settings/spa/development/UsageStatsPageProvider;->INSTANCE:Lcom/android/settings/spa/development/UsageStatsPageProvider;

    sget-object v14, Lcom/android/settings/spa/development/compat/PlatformCompatAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/development/compat/PlatformCompatAppListPageProvider;

    sget-object v15, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    sget-object v16, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;

    sget-object v17, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;

    sget-object v18, Lcom/android/settings/spa/network/NetworkAndInternetPageProvider;->INSTANCE:Lcom/android/settings/spa/network/NetworkAndInternetPageProvider;

    sget-object v19, Lcom/android/settings/spa/about/AboutPhonePageProvider;->INSTANCE:Lcom/android/settings/spa/about/AboutPhonePageProvider;

    sget-object v20, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Apps;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Apps;

    sget-object v21, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;

    sget-object v22, Lcom/android/settings/network/apn/ApnEditPageProvider;->INSTANCE:Lcom/android/settings/network/apn/ApnEditPageProvider;

    sget-object v23, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider;

    sget-object v24, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProvider;

    new-instance v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v28, v2

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    const/4 v2, -0x1

    iput v2, v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultVoiceSubId:I

    iput v2, v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultSmsSubId:I

    iput v2, v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultDataSubId:I

    iput v2, v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->nonDds:I

    sget-object v26, Lcom/android/settings/wifi/details2/WifiPrivacyPageProvider;->INSTANCE:Lcom/android/settings/wifi/details2/WifiPrivacyPageProvider;

    sget-object v27, Lcom/android/settings/print/PrintSettingsPageProvider;->INSTANCE:Lcom/android/settings/print/PrintSettingsPageProvider;

    move-object v2, v3

    move-object v3, v0

    move-object/from16 v25, v2

    filled-new-array/range {v3 .. v27}, [Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;)V

    new-instance v4, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;

    invoke-direct {v4, v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;)V

    filled-new-array {v3, v4}, [Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, v28

    invoke-direct {v2, v1, v0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method
