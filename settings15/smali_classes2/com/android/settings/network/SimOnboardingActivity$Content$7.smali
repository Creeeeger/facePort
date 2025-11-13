.class final Lcom/android/settings/network/SimOnboardingActivity$Content$7;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/android/settings/network/SimOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "SimOnboardingService"

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    const-string v0, "DSDS is already enabled. Condition not satisfied."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/android/settings/network/SimOnboardingService;->isMultipleEnabledProfilesSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    const-string v1, "Device supports MEP and eSIM operation and eSIM profile is enabled. DSDS condition satisfied."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "UICC Slot info list is empty."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->slotInfoList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/settings/network/UiccSlotUtil;->isRemovableSimEnabled(Ljava/util/List;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_8

    const-string v1, "eSIM operation and removable PSIM is enabled. DSDS condition satisfied."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result v2

    :cond_5
    const-string v0, "SimOnboardingActivity"

    if-eqz v2, :cond_7

    const-string v1, "Device does not support reboot free DSDS."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showRestartDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    const-string p0, "showRestartDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    const-string v1, "Enable DSDS mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {v0}, Lcom/android/settings/network/SimOnboardingActivity;->getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->enableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->run$1()V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    :cond_9
    if-nez v2, :cond_a

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/SimOnboardingService$isEsimProfileEnabled$1;->INSTANCE:Lcom/android/settings/network/SimOnboardingService$isEsimProfileEnabled$1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    :cond_a
    const-string v0, "DSDS condition not satisfied."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const-string v0, "Hardware does not support DSDS."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$7;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider;

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v0, v0, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    const-string v1, "SimOnboardingPageProvider/"

    invoke-static {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/spa/SpaActivity;->Companion:Lcom/android/settings/spa/SpaActivity$Companion;

    invoke-static {p0, v0}, Lcom/android/settings/spa/SpaActivity$Companion;->startSpaActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
