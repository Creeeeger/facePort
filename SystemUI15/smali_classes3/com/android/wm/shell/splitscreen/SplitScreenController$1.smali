.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "SplitScreenProxyService"

    const-string p2, "onServiceConnected. inject splitController obj"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mService:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
