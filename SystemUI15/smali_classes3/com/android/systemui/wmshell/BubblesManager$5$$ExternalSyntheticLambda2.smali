.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$5;Lcom/android/systemui/model/SysUiState;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$5;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iput-boolean p2, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$2:Z

    const-string p1, "Bubbles"

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-boolean v1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$2:Z

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setRequestTopUi(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/model/SysUiState;

    iget-boolean p0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;->f$2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x4000

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    if-nez p0, :cond_0

    const-wide/32 v2, 0x800000

    const/4 p0, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
