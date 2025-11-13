.class Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 674
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmRequestGatekeeperPassword(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 676
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
