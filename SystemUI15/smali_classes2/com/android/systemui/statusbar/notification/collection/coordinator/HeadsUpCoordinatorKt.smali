.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final synthetic access$getLocation(Ljava/util/Map;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;->getLocation(Ljava/util/Map;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$modifyHuns(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;->modifyHuns(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getLocation(Ljava/util/Map;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Detached:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    return-object p0
.end method

.method private static final modifyHuns(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lkotlin/jvm/functions/Function1;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;->commitModifications()V

    return-object p0
.end method
