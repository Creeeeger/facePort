.class public final synthetic Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/wmshell/WMShell$11;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x119

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(Landroid/view/KeyEvent;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$10;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$10;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v1, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$10;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$10;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v1, 0x10000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$10;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$10;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v1, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
