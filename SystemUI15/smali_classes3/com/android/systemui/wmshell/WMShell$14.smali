.class public final Lcom/android/systemui/wmshell/WMShell$14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$14;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraLaunchGestureDetected(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object p1, p1, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/wmshell/WMShell$14;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p2, p2, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$14;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object p1, p1, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
