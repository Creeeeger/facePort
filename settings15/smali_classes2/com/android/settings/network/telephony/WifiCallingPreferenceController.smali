.class public Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\u00020\u0001B9\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\"R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lcom/android/settings/network/telephony/WifiCallingPreferenceController;",
        "Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;",
        "Landroid/content/Context;",
        "context",
        "",
        "key",
        "Lcom/android/settings/network/telephony/CallStateRepository;",
        "callStateRepository",
        "Lkotlin/Function1;",
        "",
        "Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;",
        "wifiCallingRepositoryFactory",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;)V",
        "",
        "update",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSummaryForWfcMode",
        "()Ljava/lang/String;",
        "subId",
        "Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;",
        "callingPreferenceCategoryController",
        "init",
        "(ILcom/android/settings/network/telephony/CallingPreferenceCategoryController;)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;",
        "getAvailabilityStatus",
        "(I)I",
        "Landroidx/preference/PreferenceScreen;",
        "screen",
        "displayPreference",
        "(Landroidx/preference/PreferenceScreen;)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "viewLifecycleOwner",
        "onViewCreated",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/android/settings/network/telephony/CallStateRepository;",
        "Lkotlin/jvm/functions/Function1;",
        "Landroidx/preference/Preference;",
        "preference",
        "Landroidx/preference/Preference;",
        "Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;",
        "Landroid/content/res/Resources;",
        "resourcesForSub$delegate",
        "Lkotlin/Lazy;",
        "getResourcesForSub",
        "()Landroid/content/res/Resources;",
        "resourcesForSub",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

.field private callingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

.field private preference:Landroidx/preference/Preference;

.field private final resourcesForSub$delegate:Lkotlin/Lazy;

.field private final wifiCallingRepositoryFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callStateRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/settings/network/telephony/CallStateRepository;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callStateRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiCallingRepositoryFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    iput-object p4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->wifiCallingRepositoryFactory:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->resourcesForSub$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    new-instance p3, Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-direct {p3, p1}, Lcom/android/settings/network/telephony/CallStateRepository;-><init>(Landroid/content/Context;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    new-instance p4, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$1;

    invoke-direct {p4, p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$1;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getCallingPreferenceCategoryController$p(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->callingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s1290605894(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPreference$p(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static final synthetic access$getSummaryForWfcMode(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getSummaryForWfcMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getResourcesForSub()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->resourcesForSub$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    return-object p0
.end method

.method private final getSummaryForWfcMode()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->wifiCallingRepositoryFactory:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    iget-object v1, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v3, "use_wfc_home_network_mode_in_roaming_network_bool"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->subId:I

    invoke-virtual {v1, v5, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->imsMmTelRepository:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    :try_start_0
    iget-object v4, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v3

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] getWiFiCallingMode failed useRoamingMode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMmTelRepository"

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const v0, 0x1041093

    goto :goto_3

    :cond_3
    const v0, 0x1041046

    goto :goto_3

    :cond_4
    const v0, 0x1041044

    goto :goto_3

    :cond_5
    const v0, 0x1041045

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getResourcesForSub()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;

    iget v1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "preference"

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v2}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_d

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v5, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$intent$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$intent$1;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/telecom/PhoneAccountHandle;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_7

    return-object v3

    :cond_7
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v5, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$title$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$title$1;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v9, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v9

    :goto_3
    check-cast p1, Ljava/lang/CharSequence;

    if-nez p1, :cond_9

    return-object v3

    :cond_9
    iget-object v1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getResourcesForSub()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f14349e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p1, :cond_f

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v6, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$2;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$2;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$update$1;->label:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    return-object v1

    :cond_e
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_4
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    return-object v3

    :cond_f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->preference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.provider.extra.SUB_ID"

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

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

.method public final init(ILcom/android/settings/network/telephony/CallingPreferenceCategoryController;)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
    .locals 1

    const-string v0, "callingPreferenceCategoryController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    iput-object p2, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->callingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    return-object p0
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

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mSubId is INVALID_SUBSCRIPTION_ID"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->wifiCallingRepositoryFactory:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    iget v1, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->subId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;

    invoke-direct {v3, v0, v2}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;-><init>(Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$onViewCreated$1;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Lkotlin/coroutines/Continuation;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, p1, v3, v0}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    iget-object v0, v0, Lcom/android/settings/network/telephony/CallStateRepository;->context:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/network/telephony/CallStateRepository$callStateFlow$1;->INSTANCE:Lcom/android/settings/network/telephony/CallStateRepository$callStateFlow$1;

    invoke-static {v0, v1, v3}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyCallbackFlow(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$onViewCreated$2;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$onViewCreated$2;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
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
