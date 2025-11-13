.class Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;
.super Landroid/os/Handler;
.source "WifiSettingsListController.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private mLastUpdatedPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mScanUpdated:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    return-void
.end method

.method private updateWithAnimationInternal(Ljava/util/List;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "WifiSettings.VI"

    if-nez p2, :cond_0

    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update newList size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmListAdapter(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateItems(Ljava/util/List;)V

    goto/16 :goto_1

    .line 432
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWithAnimation newList size:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmListAdapter(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->updateListWithAnimation(Ljava/util/List;)V

    .line 435
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmListAdapter(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getAvailableList()Ljava/util/List;

    move-result-object p0

    .line 436
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq p2, v3, :cond_1

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dont match. size now:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expect:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_1
    move p2, v1

    .line 440
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 441
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 442
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wifitrackerlib/WifiEntry;

    if-eq v3, v4, :cond_2

    .line 443
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dont match "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method clearPendingList()V
    .locals 1

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmListAdapter(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    goto :goto_0

    .line 396
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const-string v0, "WifiSettings.VI"

    if-nez p1, :cond_2

    const-string p0, "new list is null"

    .line 398
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmAvailableList(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 402
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->updateWithAnimationInternal(Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "list update failed, force update again."

    .line 404
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    goto :goto_0

    :cond_4
    const-string v1, "animation is running, pending CMD_UPDATE_LIST"

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public onAnimationsFinished()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings.VI"

    const-string v1, "animation finished, need to update pending list"

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method removeAll()V
    .locals 1

    const/4 v0, 0x2

    .line 369
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateList(Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z)Z"
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    if-eqz v0, :cond_0

    .line 376
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    .line 378
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmAvailableList(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 379
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p2

    :cond_1
    const-string p2, "WifiSettings.VI"

    const-string v0, "animation is running, pending it to update"

    .line 383
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    const/4 p0, 0x0

    return p0
.end method
