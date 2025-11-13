.class public final Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public final mZenModeUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V
    .locals 6

    iput-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "floating_noti_package_list"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v4, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    if-eq v1, v0, :cond_0

    iput v0, p1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v2, v4, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final loadingEnabledListFromDB()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/SmartPopupViewService;->access$100(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-static {v3}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "zen_mode"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    :cond_1
    return-void
.end method
