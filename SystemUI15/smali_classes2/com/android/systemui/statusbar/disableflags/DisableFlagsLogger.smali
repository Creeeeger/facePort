.class public final Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final disable1FlagsList:Ljava/util/List;

.field public final disable2FlagsList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable1FlagsList:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable2FlagsList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "disable2 flags must have unique symbols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "disable1 flags must have unique symbols"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static flagsListHasDuplicateSymbols(Ljava/util/List;)Z
    .locals 6

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ge v0, p0, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    return v5
.end method


# virtual methods
.method public final getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received new disable state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, " | New after local modification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "(unchanged)"

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    iget v4, p2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v4

    iget v5, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    iget v3, p2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v3

    iget v4, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    iget v3, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    iget v2, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
