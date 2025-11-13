.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field final synthetic $packageInfoState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;->$packageInfoState:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;->$packageInfoState:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v7, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x10c3ec64

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_5

    :cond_4
    new-instance v2, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    invoke-direct {v2, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object p2, v2

    check-cast p2, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v9

    const/16 v5, 0x200

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;->AppInfo(ZZLandroidx/compose/runtime/Composer;II)V

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 v3, 0x0

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/AppButtonsKt;->AppButtons(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;Landroidx/compose/runtime/Composer;II)V

    const/16 p0, 0x8

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppSettingsPreferenceKt;->AppSettingsPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt;->AppAllServicesPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x0

    invoke-static {v7, v1, p1, p0, v0}, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt;->AppNotificationPreference(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/IAppNotificationRepository;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v7, v1, p1, p0, v0}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt;->AppPermissionPreference(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt;->AppStoragePreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt;->InstantAppDomainsPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v2, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt;->AppDataUsagePreference(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/datausage/lib/INetworkTemplates;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppTimeSpentPreferenceKt;->AppTimeSpentPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppBatteryPreferenceKt;->AppBatteryPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppLocalePreferenceKt;->AppLocalePreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt;->AppOpenByDefaultPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v7, p1, p0}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt;->DefaultAppShortcuts(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    const p0, 0x7f143072

    invoke-static {p1, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$1;

    invoke-direct {v0, v7, v9}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$1;-><init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/StateFlowImpl;)V

    const v1, 0x35627c52

    invoke-static {v1, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    const p0, 0x7f1402b4

    invoke-static {p1, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$2;

    invoke-direct {v0, v7}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$2;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const v2, -0x2e23f737

    invoke-static {v2, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    const p0, 0x7f14036b

    invoke-static {p1, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$3;

    invoke-direct {v0, v7}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2$3;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const v2, -0x44d4b36

    invoke-static {v2, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    const/16 p0, 0x40

    const/4 v0, 0x1

    invoke-virtual {p2, v8, p1, p0, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;->FooterAppVersion(ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
