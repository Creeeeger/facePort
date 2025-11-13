.class final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "getLocation(Ljava/util/Map;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;"

    const/4 v6, 0x1

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;

    const-string v4, "getLocation"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;->access$getLocation(Ljava/util/Map;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;->invoke(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    move-result-object p0

    return-object p0
.end method
