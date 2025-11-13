.class public final Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final buffer$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final clearAll$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

.field public final echoTracker:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

.field public final list$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

.field public final tag$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;

    const-string v2, "buffer"

    const-string v3, "getBuffer()Ljava/lang/String;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v5, "tag"

    const-string v6, "getTag()Ljava/lang/String;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v6, "clearAll"

    const-string v7, "getClearAll()Z"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v7, "list"

    const-string v8, "getList()Z"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v3, v5, v6}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;)V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "echo"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->echoTracker:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    const-string v0, "b"

    const-string v1, "Modifies the echo level of a buffer. Use the form <name>:<level>, e.g. \'Foo:V\'. Valid levels are V,D,I,W,E, and -. The - level clears any pre-existing override."

    const-string v3, "buffer"

    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->buffer$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    const-string/jumbo v0, "t"

    const-string v1, "Modifies the echo level of a tag. Use the form <name>:<level>, e.g. \'Foo:V\'. Valid levels are V,D,I,W,E, and -. The - level clears any pre-existing override."

    const-string/jumbo v3, "tag"

    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->tag$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    const-string p1, "clear-all"

    const-string v0, "Removes all local echo level overrides"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->flag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/commandline/Flag;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->clearAll$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    const-string p1, "list"

    const-string v0, "Lists all local echo level overrides"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->flag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/commandline/Flag;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->list$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    return-void
.end method

.method public static parseTagStructure(Ljava/lang/String;Lcom/android/systemui/log/echo/EchoOverrideType;)Lcom/android/systemui/log/echo/Outcome;
    .locals 4

    sget-object v0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommandKt;->OVERRIDE_PATTERN:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/systemui/log/echo/Outcome$Failure;

    const-string p1, "Cannot parse override format, must be `<name>:<level>`"

    invoke-direct {p0, p1}, Lcom/android/systemui/log/echo/Outcome$Failure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-direct {v0, p0}, Lkotlin/text/MatcherMatchResult$groupValues$1;-><init>(Lkotlin/text/MatcherMatchResult;)V

    iput-object v0, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    :cond_1
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    if-nez v1, :cond_2

    new-instance v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-direct {v1, p0}, Lkotlin/text/MatcherMatchResult$groupValues$1;-><init>(Lkotlin/text/MatcherMatchResult;)V

    iput-object v1, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    :cond_2
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult;->groupValues_:Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "-"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance p0, Lcom/android/systemui/log/echo/Outcome$Success;

    new-instance v1, Lcom/android/systemui/log/echo/ParsedOverride;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/log/echo/ParsedOverride;-><init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/log/echo/Outcome$Success;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "warning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v3, "verbose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v3, "warn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "info"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "wtf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WTF:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "v"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_9
    const-string v3, "i"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_a
    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_b
    const-string v3, "d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :sswitch_c
    const-string v3, "assert"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WTF:Lcom/android/systemui/log/core/LogLevel;

    :goto_0
    if-nez v2, :cond_11

    new-instance p1, Lcom/android/systemui/log/echo/Outcome$Failure;

    const-string v0, "Unrecognized level "

    const-string v1, ". Must be one of \'v,d,i,w,e,-\'"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/log/echo/Outcome$Failure;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_11
    new-instance p0, Lcom/android/systemui/log/echo/Outcome$Success;

    new-instance v1, Lcom/android/systemui/log/echo/ParsedOverride;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/log/echo/ParsedOverride;-><init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/log/echo/Outcome$Success;-><init>(Ljava/lang/Object;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8cba -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x69 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x1cd29 -> :sswitch_6
        0x3164ae -> :sswitch_5
        0x379286 -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x14ed7982 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 12

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v1, v0

    iget-object v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->buffer$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iget-object v2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->tag$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->echoTracker:Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/log/echo/EchoOverrideType;->BUFFER:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-static {v0, p0}, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->parseTagStructure(Ljava/lang/String;Lcom/android/systemui/log/echo/EchoOverrideType;)Lcom/android/systemui/log/echo/Outcome;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/log/echo/Outcome$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/log/echo/Outcome$Success;

    iget-object p0, p0, Lcom/android/systemui/log/echo/Outcome$Success;->value:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/echo/ParsedOverride;

    iget-object v7, p0, Lcom/android/systemui/log/echo/ParsedOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/log/echo/ParsedOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    iget-object v9, p0, Lcom/android/systemui/log/echo/ParsedOverride;->name:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lcom/android/systemui/log/echo/EchoOverrideType;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p0, v4, p1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/log/echo/Outcome$Failure;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/systemui/log/echo/Outcome$Failure;

    iget-object p0, p0, Lcom/android/systemui/log/echo/Outcome$Failure;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_3

    sget-object p0, Lcom/android/systemui/log/echo/EchoOverrideType;->TAG:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-static {v2, p0}, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->parseTagStructure(Ljava/lang/String;Lcom/android/systemui/log/echo/EchoOverrideType;)Lcom/android/systemui/log/echo/Outcome;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/log/echo/Outcome$Success;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/log/echo/Outcome$Success;

    iget-object p0, p0, Lcom/android/systemui/log/echo/Outcome$Success;->value:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/echo/ParsedOverride;

    iget-object v7, p0, Lcom/android/systemui/log/echo/ParsedOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/log/echo/ParsedOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    iget-object v9, p0, Lcom/android/systemui/log/echo/ParsedOverride;->name:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$setEchoLevel$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lcom/android/systemui/log/echo/EchoOverrideType;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p0, v4, p1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/android/systemui/log/echo/Outcome$Failure;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/systemui/log/echo/Outcome$Failure;

    iget-object p0, p0, Lcom/android/systemui/log/echo/Outcome$Failure;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    aget-object v0, v1, v3

    iget-object v0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->clearAll$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;

    invoke-direct {p0, v11, v4}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$clearAllOverrides$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lkotlin/coroutines/Continuation;)V

    iget-object p1, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v11, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p1, v4, p0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    aget-object v0, v1, v0

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerCommand;->list$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    if-eqz p0, :cond_5

    invoke-virtual {v11}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->listEchoOverrides()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    iget-object v1, v0, Lcom/android/systemui/log/echo/LogcatEchoOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lkotlin/text/StringsKt__StringsKt;->padEnd$default(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/log/echo/LogcatEchoOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lkotlin/text/StringsKt__StringsKt;->padEnd$default(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/log/echo/LogcatEchoOverride;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_5
    const-string p0, "You must specify one of --buffer, --tag, --list, or --clear-all"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final usage(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    const-string p0, "Usage:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "echo -b MyBufferName:V    // Set echo level of a buffer to verbose"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "echo -t MyTagName:V       // Set echo level of a tag to verbose"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "echo -b MyBufferName:-    // Clear any echo overrides for a buffer"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "echo -t MyTagName:-       // Clear any echo overrides for a tag"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "echo --list               // List all current echo overrides"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "echo --clear-all          // Clear all echo overrides"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
