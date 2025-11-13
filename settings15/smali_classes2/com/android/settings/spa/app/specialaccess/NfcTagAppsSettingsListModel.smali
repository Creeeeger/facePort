.class public final Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel$filter$$inlined$map$1;

    invoke-direct {p0, p2}, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel$filter$$inlined$map$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)V

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    const p0, 0x7f14091f

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    const p0, 0x7f140921

    return p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    const p0, 0x7f140920

    return p0
.end method

.method public final isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x24cf1d99

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;->controller:Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;->_allowed:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p2}, Lcom/android/settingslib/spa/livedata/LiveDataExtKt;->observeAsCallback(Landroidx/lifecycle/LiveData;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 2

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    iget-object v1, p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Landroid/nfc/NfcAdapter;->setTagIntentAppPreferenceForUser(ILjava/lang/String;Z)I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;->controller:Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;->_allowed:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "NfcTagAppsSettingsListModel"

    const-string p1, "Error updating TagIntentAppPreference"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel$transform$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel$transform$1;-><init>(Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .locals 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsListModel;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isTagIntentAppPreferenceSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->getTagIntentAppPreferenceForUser(I)Ljava/util/Map;

    move-result-object p0

    const-string v0, "getTagIntentAppPreferenceForUser(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;-><init>(Z)V

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsRecord;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;Z)V

    return-object p0
.end method
