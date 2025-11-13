.class final synthetic Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;

    invoke-direct {v0}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;-><init>()V

    sput-object v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;->INSTANCE:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string/jumbo v4, "validateUpdatePair(Lcom/android/systemui/common/shared/model/PackageChangeModel;Lcom/android/systemui/common/shared/model/PackageChangeModel;)Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateStarted;"

    const/4 v5, 0x5

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractorKt;

    const-string/jumbo v3, "validateUpdatePair"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/common/shared/model/PackageChangeModel;

    check-cast p2, Lcom/android/systemui/common/shared/model/PackageChangeModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    sget p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->$r8$clinit:I

    invoke-interface {p1}, Lcom/android/systemui/common/shared/model/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/android/systemui/common/shared/model/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/common/shared/model/PackageChangeModel;->getPackageUid()I

    move-result p0

    invoke-interface {p2}, Lcom/android/systemui/common/shared/model/PackageChangeModel;->getPackageUid()I

    move-result v0

    if-ne p0, v0, :cond_2

    instance-of p0, p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateStarted;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateFinished;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p1

    check-cast p3, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateStarted;

    :cond_2
    :goto_0
    return-object p3
.end method
