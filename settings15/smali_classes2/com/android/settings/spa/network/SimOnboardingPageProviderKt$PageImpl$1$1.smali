.class final Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "it",
        "Landroidx/navigation/NavBackStackEntry;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $navHostController:Landroidx/navigation/NavHostController;

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$navHostController:Landroidx/navigation/NavHostController;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    const-string p4, "$this$composable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x7a94d5b5

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingService;->isMultipleEnabledProfilesSupported()Z

    move-result p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p4, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, p1, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "SimOnboardingService"

    const-string v0, "isAllOfSlotAssigned: getActiveModemCount is 0"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v1, p1, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_5

    :goto_2
    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    goto :goto_3

    :cond_3
    const/4 p1, -0x1

    :goto_3
    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    move p1, p4

    :goto_4
    if-nez p1, :cond_5

    const-string p1, "SelectSim"

    goto :goto_5

    :cond_5
    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1$nextPage$1;

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1$nextPage$1;-><init>(Lcom/android/settings/network/SimOnboardingService;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p2, p1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const-string p1, "PrimarySim"

    :goto_5
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance p4, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$navHostController:Landroidx/navigation/NavHostController;

    invoke-direct {p4, v0, p1}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1$1;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/16 v0, 0x200

    invoke-static {p4, p1, p0, p3, v0}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt;->SimOnboardingLabelSimImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/Composer;I)V

    return-object p2
.end method
