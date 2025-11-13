.class final Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;
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
.field final synthetic $level:Lcom/android/systemui/log/core/LogLevel;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $type:Lcom/android/systemui/log/echo/EchoOverrideType;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lcom/android/systemui/log/echo/EchoOverrideType;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;",
            "Lcom/android/systemui/log/echo/EchoOverrideType;",
            "Lcom/android/systemui/log/core/LogLevel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iput-object p2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$type:Lcom/android/systemui/log/echo/EchoOverrideType;

    iput-object p3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$level:Lcom/android/systemui/log/core/LogLevel;

    iput-object p4, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$name:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;

    iget-object v1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object v2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$type:Lcom/android/systemui/log/echo/EchoOverrideType;

    iget-object v3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$level:Lcom/android/systemui/log/core/LogLevel;

    iget-object v4, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$name:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lcom/android/systemui/log/echo/EchoOverrideType;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object p1, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object p1, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$type:Lcom/android/systemui/log/echo/EchoOverrideType;

    sget-object v2, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$level:Lcom/android/systemui/log/core/LogLevel;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$name:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->$name:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iput-object v0, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iput-object v1, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-virtual {p1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->listEchoOverrides()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->settingFormat:Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;->stringifyOverrides(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "systemui/logbuffer_echo_overrides"

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
