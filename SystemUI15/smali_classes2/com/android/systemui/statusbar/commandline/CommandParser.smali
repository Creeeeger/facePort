.class public final Lcom/android/systemui/statusbar/commandline/CommandParser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _flags:Ljava/util/List;

.field public final _params:Ljava/util/List;

.field public final _subCommands:Ljava/util/List;

.field public final flags:Ljava/util/List;

.field public final params:Ljava/util/List;

.field public final subCommands:Ljava/util/List;

.field public final tokenSet:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_flags:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->flags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_params:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->_subCommands:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final checkCliNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->tokenSet:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUnhandledParams()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/commandline/Param;

    instance-of v3, v2, Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->handled:Z

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getUnhandledSubCmds()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/commandline/SubCommand;

    instance-of v3, v2, Lcom/android/systemui/statusbar/commandline/RequiredSubCommand;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/commandline/RequiredSubCommand;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/commandline/RequiredSubCommand;->handled:Z

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final parse(Ljava/util/List;)Z
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->flags:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/commandline/Flag;

    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/commandline/Describable;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    check-cast v3, Lcom/android/systemui/statusbar/commandline/Flag;

    const/4 v2, 0x1

    if-eqz v3, :cond_4

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/commandline/Param;

    invoke-interface {v7, v0}, Lcom/android/systemui/statusbar/commandline/Describable;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_3
    check-cast v6, Lcom/android/systemui/statusbar/commandline/Param;

    if-eqz v6, :cond_7

    invoke-interface {v6, p1}, Lcom/android/systemui/statusbar/commandline/Param;->parseArgsFromIter(Ljava/util/Iterator;)V

    move v3, v2

    :cond_7
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v7, v0}, Lcom/android/systemui/statusbar/commandline/Describable;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v4, v6

    :cond_9
    check-cast v4, Lcom/android/systemui/statusbar/commandline/SubCommand;

    if-eqz v4, :cond_a

    invoke-interface {v4, p1}, Lcom/android/systemui/statusbar/commandline/SubCommand;->parseSubCommandArgs(Ljava/util/ListIterator;)V

    goto :goto_4

    :cond_a
    move v2, v3

    :goto_4
    if-eqz v2, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p0, Lcom/android/systemui/statusbar/commandline/ArgParseError;

    const-string p1, "Unknown token: "

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/commandline/ArgParseError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->validateRequiredParams()Z

    move-result p0

    return p0
.end method

.method public final parseAsSubCommand(Ljava/util/ListIterator;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->flags:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->validateRequiredParams()Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->flags:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/commandline/Flag;

    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/commandline/Describable;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/android/systemui/statusbar/commandline/Flag;

    const/4 v1, 0x1

    if-eqz v2, :cond_3

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/commandline/Flag;->inner:Z

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->params:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/commandline/Param;

    invoke-interface {v6, v0}, Lcom/android/systemui/statusbar/commandline/Describable;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v5

    :cond_5
    check-cast v3, Lcom/android/systemui/statusbar/commandline/Param;

    if-eqz v3, :cond_6

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/commandline/Param;->parseArgsFromIter(Ljava/util/Iterator;)V

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->validateRequiredParams()Z

    move-result p0

    return p0
.end method

.method public final validateRequiredParams()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledParams()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandParser;->getUnhandledSubCmds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandParser;->subCommands:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/commandline/SubCommand;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/commandline/SubCommand;->getValidationStatus()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
