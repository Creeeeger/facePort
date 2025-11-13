.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    const-string v1, "compatui"

    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mWaitingForFixedRotation:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDeferVisibilityUpdate:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDeferVisibilityUpdate:Z

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;-><init>(I)V

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
