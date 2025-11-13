.class public final Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showSoftInput$2()V

    :goto_0
    return-void
.end method
