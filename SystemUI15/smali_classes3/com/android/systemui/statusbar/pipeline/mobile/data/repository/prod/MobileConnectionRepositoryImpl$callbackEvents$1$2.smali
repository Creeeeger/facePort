.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->label:I

    if-nez v0, :cond_c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$callbackEvents$1$2;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;

    if-eqz p1, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;

    const/4 v10, 0x0

    const/16 v13, 0xffd

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;

    if-eqz p1, :cond_1

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;

    const/4 v10, 0x0

    const/16 v13, 0xffb

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;

    if-eqz p1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;

    const/4 v10, 0x0

    const/16 v13, 0xffe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;

    if-eqz p1, :cond_3

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;

    const/4 v10, 0x0

    const/16 v13, 0xff7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;

    if-eqz p1, :cond_4

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;

    const/4 v10, 0x0

    const/16 v13, 0xfef

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;

    if-eqz p1, :cond_5

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;

    const/4 v10, 0x0

    const/16 v13, 0xfdf

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;

    if-eqz p1, :cond_6

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;

    const/4 v10, 0x0

    const/16 v13, 0xfbf

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;

    if-eqz p1, :cond_7

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;

    const/4 v10, 0x0

    const/16 v13, 0xf7f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto :goto_0

    :cond_7
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;

    if-eqz p1, :cond_8

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;

    const/4 v10, 0x0

    const/16 v13, 0xeff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto :goto_0

    :cond_8
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;

    if-eqz p1, :cond_9

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;

    const/4 v9, 0x0

    const/16 v13, 0xdff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto :goto_0

    :cond_9
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;

    if-eqz p1, :cond_a

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;

    const/4 v9, 0x0

    const/16 v13, 0xbff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;

    if-eqz p1, :cond_b

    move-object v12, p0

    check-cast v12, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;

    const/4 v9, 0x0

    const/16 v13, 0x7ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;->copy$default(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataActivity;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierNetworkChange;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnModeChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataConnectionStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDataEnabledChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnDisplayInfoChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCarrierRoamingNtnSignalStrengthChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$OnCallStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteServiceStateChanged;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/CallbackEvent$onSemSatelliteSignalStrengthChanged;I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/TelephonyCallbackState;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
