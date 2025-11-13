.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

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

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Lcom/android/systemui/shade/shared/model/ShadeMode;

    check-cast p4, Lcom/android/systemui/plugins/clocks/ClockController;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;

    invoke-direct {p2, p5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->Z$0:Z

    iput-boolean p1, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->Z$1:Z

    iput-object p3, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->L$0:Ljava/lang/Object;

    iput-object p4, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->Z$1:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/shade/shared/model/ShadeMode;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$currentClockLayout$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/plugins/clocks/ClockController;

    sget-object v2, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockConfig;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/plugins/clocks/ClockConfig;->getUseCustomClockScene()Z

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_4

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    :goto_0
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
