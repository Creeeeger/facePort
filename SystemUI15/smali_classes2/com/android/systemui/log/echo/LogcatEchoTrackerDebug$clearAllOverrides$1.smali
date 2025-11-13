.class final Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-virtual {p1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->listEchoOverrides()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->settingFormat:Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;->stringifyOverrides(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "systemui/logbuffer_echo_overrides"

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
