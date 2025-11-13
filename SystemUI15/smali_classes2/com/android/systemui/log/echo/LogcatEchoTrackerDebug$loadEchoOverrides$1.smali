.class final Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;
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

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->label:I

    if-nez v3, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object p1, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string/jumbo v3, "systemui/logbuffer_echo_overrides"

    invoke-interface {p1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iget-object v3, v3, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->settingFormat:Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Unrecognized echo override formation version: "

    const-string v4, ";"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v2, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "EchoFormat"

    if-eq v6, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized echo override format: \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_4

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_11

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "(?<!\\\\);"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, p1

    if-ge v6, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "b"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v6, Lcom/android/systemui/log/echo/EchoOverrideType;->BUFFER:Lcom/android/systemui/log/echo/EchoOverrideType;

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "t"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/systemui/log/echo/EchoOverrideType;->TAG:Lcom/android/systemui/log/echo/EchoOverrideType;

    :goto_1
    add-int/lit8 v7, p1, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\;"

    invoke-static {v7, v8, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, p1, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x21

    if-eq v9, v10, :cond_e

    const/16 v10, 0x69

    if-eq v9, v10, :cond_c

    const/16 v10, 0x64

    if-eq v9, v10, :cond_a

    const/16 v10, 0x65

    if-eq v9, v10, :cond_8

    const/16 v10, 0x76

    if-eq v9, v10, :cond_6

    const/16 v10, 0x77

    if-eq v9, v10, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v9, "w"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_6
    const-string/jumbo v9, "v"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_8
    const-string v9, "e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_a
    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_c
    const-string v9, "i"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_3

    :cond_d
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_e
    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_3

    :cond_f
    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->WTF:Lcom/android/systemui/log/core/LogLevel;

    :goto_2
    add-int/2addr p1, v0

    new-instance v9, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    invoke-direct {v9, v6, v7, v8}, Lcom/android/systemui/log/echo/LogcatEchoOverride;-><init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    :goto_3
    move-object p1, v5

    goto :goto_4

    :cond_11
    invoke-static {v6, v3, v7}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_4

    :catch_0
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    iget-object v5, v4, Lcom/android/systemui/log/echo/LogcatEchoOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    sget-object v6, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v1, :cond_13

    if-ne v5, v2, :cond_12

    move-object v5, v3

    goto :goto_6

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_13
    move-object v5, v0

    :goto_6
    iget-object v6, v4, Lcom/android/systemui/log/echo/LogcatEchoOverride;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/log/echo/LogcatEchoOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_14
    iget-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iput-object v0, p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;->this$0:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    iput-object v3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
