.class public final Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;

.field public static final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x798b53da

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$EntryItem$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$EntryItem$1;-><init>(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$EntryItem$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$EntryItem$2;-><init>(Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1327993e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f142d02

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$Page$1;

    invoke-direct {v1, p1}, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$Page$1;-><init>(Landroid/os/Bundle;)V

    const v2, -0x11e28379

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v4, 0x180

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$Page$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider$Page$2;-><init>(Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final buildEntry(Landroid/os/Bundle;)Ljava/util/List;
    .locals 12

    sget-object v0, Lcom/android/settings/spa/app/specialaccess/AllFilesAccessAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/AllFilesAccessAppListProvider;

    sget-object v1, Lcom/android/settings/spa/app/specialaccess/DisplayOverOtherAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/DisplayOverOtherAppsAppListProvider;

    sget-object v2, Lcom/android/settings/spa/app/specialaccess/MediaManagementAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/MediaManagementAppsAppListProvider;

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/MediaRoutingControlAppListProvider;

    sget-object v4, Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/ModifySystemSettingsAppListProvider;

    sget-object v5, Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/UseFullScreenIntentAppListProvider;

    sget-object v6, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;

    sget-object v7, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListProvider;

    sget-object v8, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListProvider;

    sget-object v9, Lcom/android/settings/spa/app/specialaccess/WifiControlAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/WifiControlAppListProvider;

    sget-object v10, Lcom/android/settings/spa/app/specialaccess/LongBackgroundTasksAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/LongBackgroundTasksAppListProvider;

    sget-object v11, Lcom/android/settings/spa/app/specialaccess/TurnScreenOnAppsAppListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/TurnScreenOnAppsAppListProvider;

    filled-new-array/range {v0 .. v11}, [Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    invoke-interface {v0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;->buildAppListInjectEntry()Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v0, v3, v2, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "SpecialAppAccess"

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
