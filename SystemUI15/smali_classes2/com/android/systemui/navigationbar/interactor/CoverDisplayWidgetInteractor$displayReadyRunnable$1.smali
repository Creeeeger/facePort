.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->isEnabled()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object p0, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->onDisplayReady(I)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object p0, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->onDisplayRemoved(I)V

    :cond_1
    :goto_0
    return-void
.end method
