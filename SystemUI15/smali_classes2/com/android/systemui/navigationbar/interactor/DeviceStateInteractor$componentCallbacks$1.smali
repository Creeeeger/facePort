.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->largeCoverRotationCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
