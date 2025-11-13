.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->forceRepositionCoverNavigationBar(I)V

    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
