.class public final Lcom/android/systemui/dump/DumpHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/dump/DumpHandler$Companion;


# instance fields
.field public final config:Lcom/android/systemui/dump/SystemUIConfigDumpable;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/dump/DumpHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/LogBufferEulogizer;Lcom/android/systemui/dump/SystemUIConfigDumpable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    iput-object p3, p0, Lcom/android/systemui/dump/DumpHandler;->config:Lcom/android/systemui/dump/SystemUIConfigDumpable;

    return-void
.end method

.method public static dump(Lcom/android/systemui/dump/DumpsysEntry;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v1, p2, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpDumpable(Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    iget p2, p2, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpBuffer(Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_1
    instance-of p2, p0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpTableBuffer(Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 1

    iget-boolean v0, p2, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/dump/DumpHandler;->listTargetNames(Ljava/util/Collection;Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/dump/DumpHandler;->dump(Lcom/android/systemui/dump/DumpsysEntry;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static listTargetNames(Ljava/util/Collection;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-interface {v0}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;
    .locals 5

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dump/ParsedArgs;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/dump/ParsedArgs;-><init>([Ljava/lang/String;Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "--tail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v4, "--list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :sswitch_3
    const-string v3, "--dump-priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lcom/android/systemui/dump/DumpHandler$parseArgs$1;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$1;

    invoke-static {p0, v3, v2}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const-string v4, "--all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_4

    :sswitch_5
    const-string v3, "-t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    sget-object v3, Lcom/android/systemui/dump/DumpHandler$parseArgs$2;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$2;

    invoke-static {p0, v2, v3}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    goto :goto_0

    :sswitch_6
    const-string v4, "-l"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    iput-boolean v3, v1, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    goto :goto_0

    :sswitch_7
    const-string v3, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    const-string v2, "help"

    iput-object v2, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "-a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_4
    iput-boolean v3, v1, Lcom/android/systemui/dump/ParsedArgs;->matchAll:Z

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "--proto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v3, v1, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    goto/16 :goto_0

    :cond_1
    :goto_5
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    const-string v0, "Unknown flag: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/dump/DumpHandlerKt;->COMMANDS:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    :cond_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x605db7b8 -> :sswitch_9
        0x5d4 -> :sswitch_8
        0x5db -> :sswitch_7
        0x5df -> :sswitch_6
        0x5e7 -> :sswitch_5
        0x2901001 -> :sswitch_4
        0x3efed3bd -> :sswitch_3
        0x4f7504e1 -> :sswitch_2
        0x4f76e63e -> :sswitch_1
        0x4f7a69f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    const-string p2, "Invalid argument \'"

    const-string v1, "\' for flag "

    invoke-static {p2, v0, v1, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    const-string p2, "Missing argument for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "DumpManager#dump()"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/systemui/dump/DumpHandler;->parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/systemui/dump/ArgParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Dump starting: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Lcom/android/systemui/dump/DumpHandlerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    const-string v6, "CRITICAL"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :cond_0
    iget-object v5, v4, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    const-string v6, "NORMAL"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    if-nez v5, :cond_1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "bugreport-critical"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_1
    const-string v0, "buffers"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_2
    const-string v0, "help"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "Let <invocation> be:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ adb shell dumpsys activity service com.android.systemui/.SystemUIService"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Most common usage:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> <targets>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> NotifLog"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> StatusBar FalsingManager BootCompleteCacheImpl"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "etc."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Print all matches, instead of the best match:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> --all <targets>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> --all Log"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Special commands:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> dumpables"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> buffers"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> tables"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> bugreport-critical"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> bugreport-normal"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> config"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Targets can be listed:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> --list"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> dumpables --list"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> buffers --list"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> tables --list"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Show only the most recent N lines of buffers"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "$ <invocation> NotifLog --tail 30"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    :sswitch_3
    const-string v0, "all"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getTableLogBuffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_4
    const-string/jumbo v0, "tables"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getTableLogBuffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_5
    const-string v7, "bugreport-normal"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_6
    const-string v0, "dumpables"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->listOrDumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto/16 :goto_b

    :sswitch_7
    const-string v7, "config"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/dump/DumpHandler;->config:Lcom/android/systemui/dump/SystemUIConfigDumpable;

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dump/SystemUIConfigDumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_a
    :goto_0
    iget-boolean v0, v4, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v4, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/dump/nano/SystemUIProtoDump;

    invoke-direct {v4}, Lcom/android/systemui/dump/nano/SystemUIProtoDump;-><init>()V

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_12

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v9, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v8, Lcom/android/systemui/dump/DumpHandler$Companion$findBestProtoTargetMatch$1;

    invoke-direct {v8, v7}, Lcom/android/systemui/dump/DumpHandler$Companion$findBestProtoTargetMatch$1;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/dump/DumpHandler$Companion$findBestProtoTargetMatch$2;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$Companion$findBestProtoTargetMatch$2;

    invoke-static {v7, v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v7

    new-instance v8, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v8, v7}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    move-object v7, v5

    goto :goto_2

    :cond_c
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2

    :cond_d
    move-object v9, v7

    check-cast v9, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v9, v9, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :cond_e
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v11, v11, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v9, v11, :cond_f

    move-object v7, v10

    move v9, v11

    :cond_f
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v10

    if-nez v10, :cond_e

    :goto_2
    check-cast v7, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    if-eqz v7, :cond_10

    iget-object v7, v7, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    goto :goto_3

    :cond_10
    move-object v7, v5

    :goto_3
    instance-of v8, v7, Lcom/android/systemui/ProtoDumpable;

    if-eqz v8, :cond_11

    check-cast v7, Lcom/android/systemui/ProtoDumpable;

    goto :goto_4

    :cond_11
    move-object v7, v5

    :goto_4
    if-eqz v7, :cond_b

    invoke-interface {v7, v4}, Lcom/android/systemui/ProtoDumpable;->dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V

    goto :goto_1

    :cond_12
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v6, v6, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    instance-of v7, v6, Lcom/android/systemui/ProtoDumpable;

    if-eqz v7, :cond_14

    check-cast v6, Lcom/android/systemui/ProtoDumpable;

    goto :goto_6

    :cond_14
    move-object v6, v5

    :goto_6
    if-eqz v6, :cond_13

    invoke-interface {v6, v4}, Lcom/android/systemui/ProtoDumpable;->dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V

    goto :goto_5

    :cond_15
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    invoke-static {v4}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    iget-object v11, v4, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getTableLogBuffers()Ljava/util/Collection;

    move-result-object v10

    iget-boolean v0, v4, Lcom/android/systemui/dump/ParsedArgs;->matchAll:Z

    if-eqz v0, :cond_17

    new-instance v0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {v5, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$$inlined$sortedBy$1;-><init>()V

    new-instance v6, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {v6, v5, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    invoke-static {v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_9

    :cond_17
    check-cast v11, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    new-instance v7, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;

    const/16 v17, 0x0

    move-object v12, v7

    move-object v13, v8

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V

    new-instance v11, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {v11, v7}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v7, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$$inlined$sortedBy$1;

    invoke-direct {v7}, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$$inlined$sortedBy$1;-><init>()V

    new-instance v12, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {v12, v11, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    invoke-virtual {v12}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_19

    move-object v11, v5

    goto :goto_8

    :cond_19
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1a

    goto :goto_8

    :cond_1a
    move-object v12, v11

    check-cast v12, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-interface {v12}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    :cond_1b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-interface {v14}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-le v12, v14, :cond_1c

    move-object v11, v13

    move v12, v14

    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1b

    :goto_8
    check-cast v11, Lcom/android/systemui/dump/DumpsysEntry;

    if-eqz v11, :cond_18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1d
    :goto_9
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-static {v5, v1, v4}, Lcom/android/systemui/dump/DumpHandler;->dump(Lcom/android/systemui/dump/DumpsysEntry;Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    goto :goto_a

    :cond_1e
    iget-boolean v0, v4, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    if-eqz v0, :cond_1f

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/systemui/dump/DumpManager;->getTableLogBuffers()Ljava/util/Collection;

    move-result-object v5

    const-string v6, "Dumpables:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/systemui/dump/DumpHandler;->listTargetNames(Ljava/util/Collection;Ljava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Buffers:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/systemui/dump/DumpHandler;->listTargetNames(Ljava/util/Collection;Ljava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "TableBuffers:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/android/systemui/dump/DumpHandler;->listTargetNames(Ljava/util/Collection;Ljava/io/PrintWriter;)V

    goto :goto_b

    :cond_1f
    const-string v0, "Nothing to dump :("

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dump took "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_7
        -0x50b00b1b -> :sswitch_6
        -0x3e4f1254 -> :sswitch_5
        -0x3488c19b -> :sswitch_4
        0x179a1 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0xd96f433 -> :sswitch_1
        0x323c8b24 -> :sswitch_0
    .end sparse-switch
.end method

.method public final dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v1, v0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    sget-object v2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpDumpable(Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0}, Lcom/android/systemui/dump/DumpManager;->getDumpables()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p2, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v5, v2, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    sget-object v6, Lcom/android/systemui/dump/DumpPriority;->NORMAL:Lcom/android/systemui/dump/DumpPriority;

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v3}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpDumpable(Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    iget v5, p2, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v5}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpBuffer(Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;Ljava/io/PrintWriter;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/dump/DumpManager;->getTableLogBuffers()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v3}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpTableBuffer(Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "BufferEulogizer"

    const-string v0, "Not eulogizing buffers; they are "

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Lcom/android/systemui/dump/LogBufferEulogizer;->getMillisSinceLastWrite(Ljava/nio/file/Path;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->maxLogAgeToDump:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " hours old"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/io/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "=============== BUFFERS FROM MOST RECENT CRASH ==============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string p1, "UncheckedIOException while dumping the core"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_4
    return-void
.end method
