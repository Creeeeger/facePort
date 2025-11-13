.class public final Lcom/android/systemui/wmshell/WMShell$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$13;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurningOff()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$13;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object v0, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
