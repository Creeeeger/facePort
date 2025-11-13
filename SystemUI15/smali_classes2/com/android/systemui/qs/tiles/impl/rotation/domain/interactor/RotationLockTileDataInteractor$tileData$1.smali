.class final Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field synthetic Z$3:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;-><init>(Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$1:Z

    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$2:Z

    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$3:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$1:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$2:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->Z$3:Z

    new-instance v3, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->resources:Landroid/content/res/Resources;

    const v5, 0x1110022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->packageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v3, p1, p0}, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;-><init>(ZZ)V

    return-object v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
