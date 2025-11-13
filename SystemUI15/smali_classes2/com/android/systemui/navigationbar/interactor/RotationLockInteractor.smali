.class public final Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public rotationLockCallback:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;

.field public final rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-void
.end method
