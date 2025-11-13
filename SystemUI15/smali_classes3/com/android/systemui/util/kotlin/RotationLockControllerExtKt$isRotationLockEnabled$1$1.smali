.class final Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $rotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field final synthetic $this_isRotationLockEnabled:Lcom/android/systemui/statusbar/policy/RotationLockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;->$this_isRotationLockEnabled:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;->$rotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;->$this_isRotationLockEnabled:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt$isRotationLockEnabled$1$1;->$rotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
