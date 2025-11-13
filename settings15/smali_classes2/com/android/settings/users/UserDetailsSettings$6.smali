.class public final Lcom/android/settings/users/UserDetailsSettings$6;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$6;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$6;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
