.class public Lcom/android/wm/shell/pip/PipMenuControlService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mMessenger:Landroid/os/Messenger;

.field public mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/pip/PipMenuControlService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-class p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-class p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    const-string p1, "PipMenuControlService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService;I)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method
