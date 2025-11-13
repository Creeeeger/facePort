.class Lcom/android/settings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_user_mode_add_toast_on_during_call:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->-$$Nest$monUserCreated(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    :goto_0
    return-void
.end method
