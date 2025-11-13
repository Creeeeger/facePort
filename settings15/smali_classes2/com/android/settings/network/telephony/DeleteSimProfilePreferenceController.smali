.class public final Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\nH\u0016J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0008J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;",
        "Lcom/android/settings/core/BasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "carrierId",
        "",
        "preference",
        "Landroidx/preference/Preference;",
        "subscriptionId",
        "subscriptionInfo",
        "Landroid/telephony/SubscriptionInfo;",
        "deleteSim",
        "",
        "displayPreference",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "handlePreferenceTreeClick",
        "",
        "init",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field private carrierId:I

.field private preference:Landroidx/preference/Preference;

.field private subscriptionId:I

.field private subscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionId:I

    iput p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->carrierId:I

    return-void
.end method

.method public static final synthetic access$deleteSim(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->deleteSim()V

    return-void
.end method

.method public static final synthetic access$getPreference$p(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->preference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private final deleteSim()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionId:I

    iget p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->carrierId:I

    sget-object v2, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "SubscriptionUtil"

    const-string v0, "Unable to delete subscription due to invalid subscription ID."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p0}, Lcom/android/settings/network/SubscriptionUtil;->shouldShowRacDialogWhenErasingEsim(Landroid/content/Context;II)Z

    move-result p0

    const-string v2, "sub_id"

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/network/telephony/EuiccRacConnectivityDialogActivity;->$r8$clinit:I

    new-instance p0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/network/telephony/EuiccRacConnectivityDialogActivity;

    invoke-direct {p0, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->$r8$clinit:I

    new-instance p0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;

    invoke-direct {p0, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController$handlePreferenceTreeClick$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController$handlePreferenceTreeClick$1;-><init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public final init(I)V
    .locals 4

    iput p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionId:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "getAvailableSubscriptions(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->carrierId:I

    :cond_2
    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->subscriptionId:I

    sget-object v2, Lcom/android/settings/network/telephony/CallStateRepository$callStateFlow$1;->INSTANCE:Lcom/android/settings/network/telephony/CallStateRepository$callStateFlow$1;

    invoke-static {v0, v1, v2}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyCallbackFlow(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
