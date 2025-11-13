.class final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    check-cast p4, Ljava/util/Map;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    invoke-direct {p4, p0, p5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iput p1, p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->I$0:I

    iput-object p2, p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->label:I

    if-nez v0, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$carrierIdIconOverrideExists$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->dataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierIconOverrides:Ljava/util/HashMap;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    invoke-interface {v1, v3, p0, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, p0, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMO_DEVICE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {v1, p1, p0, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_AMX_FAMILY:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, p0, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    const/16 v7, 0xd

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "PCT"

    if-eqz v2, :cond_4

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "CDR"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "AMX"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TCE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_1
    iget p0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p0, p1, :cond_e

    :cond_3
    :goto_0
    move v4, v6

    goto/16 :goto_6

    :cond_4
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_OPEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, p0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x14

    const/16 v8, 0x3e7

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    move v0, v6

    goto :goto_2

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v6

    goto :goto_3

    :cond_9
    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    const-string v2, "AIO_OPEN"

    const-string v5, "ATT_OPEN"

    if-eqz v0, :cond_a

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "VZW_OPEN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TMB_OPEN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TMK_OPEN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "USC_OPEN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto/16 :goto_0

    :cond_b
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, p0, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AIO"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;->getLookupKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v6

    goto :goto_4

    :cond_c
    invoke-static {v5}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_4
    if-eqz p1, :cond_d

    move p0, v6

    goto :goto_5

    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_5
    if-eqz p0, :cond_e

    goto/16 :goto_0

    :cond_e
    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
