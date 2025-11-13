.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final synthetic access$extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;->extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;->extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static final extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method private static final extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;

    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p0

    return-object p0
.end method
