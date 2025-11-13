.class public Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TEST_MOCK_REMOTE_TRANSITION:Z


# instance fields
.field public mMessenger:Landroid/os/Messenger;

.field public mPendingMsg:Landroid/os/Message;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;


# direct methods
.method public static -$$Nest$mexecuteRemoteCall(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/wm/shell/common/RemoteCallable;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    const-string v0, "persist.mt.debug.mock_remote"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    return-void
.end method


# virtual methods
.method public final makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    if-eqz p2, :cond_0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    const/high16 v3, 0xa000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;I)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
