.class public final Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppStorageSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    iget p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object p1, p1, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object p1, p1, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
