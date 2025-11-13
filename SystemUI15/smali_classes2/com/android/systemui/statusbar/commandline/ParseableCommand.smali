.class public abstract Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion;


# instance fields
.field public final description:Ljava/lang/String;

.field public final help$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

.field public final name:Ljava/lang/String;

.field public final parser:Lcom/android/systemui/statusbar/commandline/CommandParser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getHelp()Z"

    const/4 v2, 0x0

    const-class v3, Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    const-string v4, "help"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->Companion:Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->description:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/commandline/CommandParser;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    const-string p1, "h"

    const-string p2, "Print help and return"

    const-string v0, "help"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->flag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/commandline/Flag;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/io/PrintWriter;)V
.end method

.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/commandline/CommandParser;->parse(Ljava/util/List;)Z

    move-result p2
    :try_end_0
    .catch Lcom/android/systemui/statusbar/commandline/ArgParseError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/commandline/SubCommand;->getCmd()Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v4, v5, v4

    iget-object v4, v6, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/commandline/SubCommand;->getCmd()Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    aget-object v2, v5, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help$delegate:Lcom/android/systemui/statusbar/commandline/Flag;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help(Ljava/io/PrintWriter;)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_a

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledParams()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledParams()Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/commandline/Param;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/commandline/Describable;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "No values passed for required params: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledSubCmds()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledSubCmds()Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/commandline/Describable;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledSubCmds()Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/commandline/Describable;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No values passed for required sub-commands: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->execute(Ljava/io/PrintWriter;)V

    :cond_b
    :goto_7
    return-void

    :catch_0
    move-exception p0

    const-string p2, "Unknown exception encountered during parse"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/ArgParseError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final flag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/commandline/Flag;
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, ")"

    if-eqz v1, :cond_6

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    const-string v0, "--"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/commandline/CommandParser;->checkCliNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/commandline/Flag;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/systemui/statusbar/commandline/Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_flags:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Detected reused flag name ("

    invoke-static {p1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Flags must not start with \'-\'. Got $("

    invoke-static {p2, p1, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Flag short name must be one character long, or null. Got ("

    invoke-static {p1, p2, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final help(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string/jumbo v2, "\u2500"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u250c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2510"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2502 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2502"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2514"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u2518"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$3;-><init>(Lcom/android/systemui/statusbar/commandline/ParseableCommand;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->description:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;-><init>(Landroid/util/IndentingPrintWriter;Lcom/android/systemui/statusbar/commandline/ParseableCommand;)V

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    iget-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->flags:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "FLAGS:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$5;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$5;-><init>(Ljava/util/List;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/commandline/Param;

    instance-of v4, v4, Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->Companion:Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion;

    if-eqz v2, :cond_4

    const-string v2, "REQUIRED PARAMS:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;-><init>(Ljava/lang/Iterable;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const-string v1, "OPTIONAL PARAMS:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;-><init>(Ljava/lang/Iterable;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/commandline/SubCommand;

    instance-of v4, v4, Lcom/android/systemui/statusbar/commandline/RequiredSubCommand;

    if-eqz v4, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const-string v1, "REQUIRED SUBCOMMANDS:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;-><init>(Ljava/lang/Iterable;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_8
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    const-string p1, "OPTIONAL SUBCOMMANDS:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;-><init>(Ljava/lang/Iterable;Landroid/util/IndentingPrintWriter;)V

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public final param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, ")"

    if-eqz v1, :cond_6

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    const-string v0, "--"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/commandline/CommandParser;->checkCliNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_params:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Detected reused param name ("

    invoke-static {p1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not start with \'-\'. Got $("

    invoke-static {p2, p1, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter short name must be one character long, or null. Got ("

    invoke-static {p1, p2, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final required(Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;)Lcom/android/systemui/statusbar/commandline/SingleArgParam;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    iget-object v1, p1, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->longName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->shortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->description:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_params:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_params:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final subCommand(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/commandline/CommandParser;->checkCliNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    iget-object v0, v0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;-><init>(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_subCommands:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubCommands may not contain other SubCommands. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot re-use name for subcommand ("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public usage(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    return-void
.end method
