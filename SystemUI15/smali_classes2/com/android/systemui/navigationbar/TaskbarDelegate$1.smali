.class public final Lcom/android/systemui/navigationbar/TaskbarDelegate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$1;->this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateAccessibilityServicesState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$1;->this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateSysuiFlags()V

    return-void
.end method

.method public final updateAssistantAvailable(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$1;->this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onAssistantAvailable(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onAssistantAvailable() failed, available: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskbarDelegate"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
