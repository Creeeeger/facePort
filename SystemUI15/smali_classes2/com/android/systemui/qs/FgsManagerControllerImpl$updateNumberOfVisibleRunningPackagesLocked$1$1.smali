.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

.field public final synthetic $num:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;->$it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iput p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;->$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;->$it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;->$num:I

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;->onNumberOfPackagesChanged(I)V

    return-void
.end method
