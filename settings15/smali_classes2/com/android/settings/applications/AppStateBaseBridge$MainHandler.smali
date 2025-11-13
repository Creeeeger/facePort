.class public final Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p1, :cond_1

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5, v3, p1}, Lcom/android/settings/applications/AppStateBaseBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->loadAllExtraInfo()V

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {p0}, Lcom/android/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
