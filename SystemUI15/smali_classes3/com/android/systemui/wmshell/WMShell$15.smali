.class public final Lcom/android/systemui/wmshell/WMShell$15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$15;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTasksVisibilityChanged(II)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$15;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-wide/32 v1, 0x4000000

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    return-void
.end method
