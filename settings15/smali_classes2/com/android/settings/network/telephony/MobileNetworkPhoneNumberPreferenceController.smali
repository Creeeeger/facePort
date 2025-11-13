.class public final Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0012\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002J\u0016\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0087@\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010 \u001a\u00020\u000eH\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!\u00b2\u0006\n\u0010\"\u001a\u00020\tX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;",
        "Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "key",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "lazyViewModel",
        "Lkotlin/Lazy;",
        "Lcom/android/settings/network/SubscriptionInfoListViewModel;",
        "phoneNumber",
        "preference",
        "Landroidx/preference/Preference;",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "",
        "subId",
        "getFormattedPhoneNumber",
        "subscriptionInfo",
        "Landroid/telephony/SubscriptionInfo;",
        "getStringUnknown",
        "init",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "refreshData",
        "(Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshUi",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core",
        "viewModel"
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
.field private lazyViewModel:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private preference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getFormattedPhoneNumber(Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPhoneNumber$p(Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method private final getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->getStringUnknown()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->getStringUnknown()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getStringUnknown()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140c90

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lkotlin/Lazy;)Lcom/android/settings/network/SubscriptionInfoListViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy;",
            ")",
            "Lcom/android/settings/network/SubscriptionInfoListViewModel;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SubscriptionInfoListViewModel;

    return-object p0
.end method

.method private final refreshUi()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
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

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public final init(Landroidx/fragment/app/Fragment;I)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$1;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$1;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/network/SubscriptionInfoListViewModel;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$4;

    invoke-direct {v3, v0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$4;-><init>(Lkotlin/Lazy;)V

    new-instance v4, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$5;

    invoke-direct {v4, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$init$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {p1, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->lazyViewModel:Lkotlin/Lazy;

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->isControllable()Z

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

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->lazyViewModel:Lkotlin/Lazy;

    if-nez v0, :cond_0

    const-string p0, "MobileNetworkPhoneNumberPreferenceController"

    const-string p1, "lateinit property lazyViewModel has not been initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->onViewCreated$lambda$0(Lkotlin/Lazy;)Lcom/android/settings/network/SubscriptionInfoListViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/network/SubscriptionInfoListViewModel;->subscriptionInfoListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$onViewCreated$$inlined$map$1;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$onViewCreated$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$onViewCreated$2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$onViewCreated$2;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1, v2}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final refreshData(Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionInfo;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;

    iget v1, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController$refreshData$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->refreshUi()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
