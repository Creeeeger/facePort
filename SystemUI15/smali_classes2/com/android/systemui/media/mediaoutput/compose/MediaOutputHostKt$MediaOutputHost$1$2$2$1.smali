.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $backStackEntry$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $lastEntryRoute$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$lastEntryRoute$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$lastEntryRoute$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$backStackEntry$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$lastEntryRoute$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v1, v1, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$2$1;->$lastEntryRoute$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v0, v0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current entry : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen;->Companion:Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;->toScreen(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/compose/Screen;

    move-result-object p0

    if-eqz p0, :cond_8

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$TvCard;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$TvCard;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$ChooseADevice;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$ChooseADevice;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutputSettings;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutputSettings;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$WifiSpeakerPlaybackPrefs;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$WifiSpeakerPlaybackPrefs;

    goto :goto_1

    :cond_5
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_8

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "send Screen - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MoSaLogging"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->isDebug$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    move-object v1, p0

    :cond_6
    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    sput-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->currentScreen:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
