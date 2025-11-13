.class public final Lcom/android/wm/shell/pip/phone/PipController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$6;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-class p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    if-eqz p1, :cond_0

    sget p2, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    const-string p2, "PipMenuControlService"

    const-string v0, "onServiceConnected. inject PhonePipMenuController"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$6;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p1, Lcom/android/wm/shell/pip/PipMenuControlService;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p0, p1, Lcom/android/wm/shell/pip/PipMenuControlService;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    sget p0, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    const-string p0, "PipMenuControlService"

    const-string p1, "onServiceDisconnected."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
