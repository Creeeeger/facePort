.class public final synthetic Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const v0, 0x7f130bbf

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    packed-switch v2, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    sget-boolean v2, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->refreshSwitchBroadcastButton()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mShouldLaunchLeBroadcastDialog:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    sget-boolean v2, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->refreshSwitchBroadcastButton()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->handleLeBroadcastStopped()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    iget-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mShouldLaunchLeBroadcastDialog:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "package_name"

    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mDialogs:Ljava/util/Set;

    new-instance v2, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iput-boolean v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mShouldLaunchLeBroadcastDialog:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
