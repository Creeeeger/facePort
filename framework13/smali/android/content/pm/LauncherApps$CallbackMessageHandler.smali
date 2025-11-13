.class Landroid/content/pm/LauncherApps$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ADDED:I = 0x1

.field private static final greylist-max-o MSG_AVAILABLE:I = 0x4

.field private static final greylist-max-o MSG_CHANGED:I = 0x3

.field private static final blacklist MSG_LOADING_PROGRESS_CHANGED:I = 0x9

.field private static final greylist-max-o MSG_REMOVED:I = 0x2

.field private static final greylist-max-o MSG_SHORTCUT_CHANGED:I = 0x8

.field private static final greylist-max-o MSG_SUSPENDED:I = 0x6

.field private static final greylist-max-o MSG_UNAVAILABLE:I = 0x5

.field private static final greylist-max-o MSG_UNSUSPENDED:I = 0x7


# instance fields
.field private greylist-max-o mCallback:Landroid/content/pm/LauncherApps$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1848
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1849
    iput-object p2, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    .line 1850
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1854
    iget-object v0, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1857
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    .line 1858
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1885
    :pswitch_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->mLoadingProgress:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V

    goto :goto_0

    .line 1882
    :pswitch_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->shortcuts:Ljava/util/List;

    iget-object v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 1883
    goto :goto_0

    .line 1879
    :pswitch_2
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1880
    goto :goto_0

    .line 1875
    :pswitch_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->launcherExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 1877
    goto :goto_0

    .line 1872
    :pswitch_4
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1873
    goto :goto_0

    .line 1869
    :pswitch_5
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1870
    goto :goto_0

    .line 1866
    :pswitch_6
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1867
    goto :goto_0

    .line 1863
    :pswitch_7
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1864
    goto :goto_0

    .line 1860
    :pswitch_8
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1861
    nop

    .line 1889
    :goto_0
    return-void

    .line 1855
    .end local v0    # "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1892
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1893
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    .line 1894
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1895
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1896
    return-void
.end method

.method public greylist-max-o postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1906
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1907
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    .line 1908
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1909
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1910
    return-void
.end method

.method public blacklist postOnPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "progress"    # F

    .line 1957
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1958
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    .line 1959
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1960
    iput p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->mLoadingProgress:F

    .line 1961
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1962
    return-void
.end method

.method public greylist-max-o postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1899
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1900
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    .line 1901
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1902
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1903
    return-void
.end method

.method public greylist-max-o postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 1914
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1915
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    .line 1916
    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    .line 1917
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1918
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1919
    return-void
.end method

.method public greylist-max-o postOnPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "launcherExtras"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1932
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1933
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    .line 1934
    iput-object p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1935
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->launcherExtras:Landroid/os/Bundle;

    .line 1936
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1937
    return-void
.end method

.method public greylist-max-o postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 1923
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1924
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    .line 1925
    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    .line 1926
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1927
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1928
    return-void
.end method

.method public greylist-max-o postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1940
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1941
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    .line 1942
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1943
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1944
    return-void
.end method

.method public greylist-max-o postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1948
    .local p3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo-IA;)V

    .line 1949
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    .line 1950
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    .line 1951
    iput-object p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->shortcuts:Ljava/util/List;

    .line 1952
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1953
    return-void
.end method
