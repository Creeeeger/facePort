.class public Lcom/android/systemui/SystemUISecondaryUserService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/process/ProcessWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUISecondaryUserService;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/android/systemui/SystemUISecondaryUserService;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SysUISecondaryService"

    const-string v1, "SecondaryServices started for System User. Stopping it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    return-void
.end method
