.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J\u0006\u0010\u001a\u001a\u00020\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020\u00162\u0008\u0010!\u001a\u0004\u0018\u00010$H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;",
        "Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "application",
        "Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;",
        "parent",
        "Landroidx/fragment/app/Fragment;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;Landroidx/fragment/app/Fragment;)V",
        "getApplication",
        "()Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "getLauncher",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "getParent",
        "()Landroidx/fragment/app/Fragment;",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getSelectedActionKey",
        "launch",
        "onActivityResult",
        "",
        "resultCode",
        "",
        "data",
        "onRadioButtonClicked",
        "preference",
        "Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;",
        "updateState",
        "Landroidx/preference/Preference;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private final parent:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;)V

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iput-object p4, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->parent:Landroidx/fragment/app/Fragment;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;)V

    invoke-virtual {p4, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const-string/jumbo p2, "registerForActivityResult(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private final getSelectedActionKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress_selected_actions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$getSelectedActionKey$actions$1;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$getSelectedActionKey$actions$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    invoke-static {p1, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;)V

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final getApplication()Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    return-object p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public final getParent()Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->parent:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final launch()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->launchIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "function_key_config_doublepress_selected_actions"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launch$actions$1;

    invoke-direct {v3}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launch$actions$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "selected_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    const-string v2, ":settings:show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_0

    const-string p1, "key"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "FunctionKeyApplicationPreferenceController"

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->componentInfo:Landroid/content/pm/ComponentInfo;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->loadDynamicFunctionKeyActions(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    const-string v2, "function_key_config_doublepress_selected_item"

    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "function_key_config_doublepress_selected_actions"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$onActivityResult$actions$1;

    invoke-direct {v3}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$onActivityResult$actions$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->pressType:I

    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_2
    const-string p0, "action is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "action key is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v1
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 2

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->getFunctionKeyAction(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->launch()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->application:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->getFunctionKeyAction(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
