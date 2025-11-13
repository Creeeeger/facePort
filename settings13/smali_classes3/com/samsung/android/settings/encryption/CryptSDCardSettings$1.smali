.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;
.super Landroid/os/Handler;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmSync(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmParent(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmParent(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$mfinishProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$mupdateProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    .line 127
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$mcheckProgress(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    .line 154
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
