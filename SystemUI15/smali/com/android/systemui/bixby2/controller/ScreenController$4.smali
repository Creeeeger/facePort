.class Lcom/android/systemui/bixby2/controller/ScreenController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

.field final synthetic val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$4;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$4;->val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$4;->val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScreenController"

    const-string v1, "expand panel RemoteException "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
