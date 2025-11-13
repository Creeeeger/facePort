.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    const-string p2, "android.app.role.HOME"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->updateHomeStatus()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->this$0:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    iget-object p2, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnRoleHoldersChangedListener: defaultHome: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskBarInteractor"

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;->$action:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
