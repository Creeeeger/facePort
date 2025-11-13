.class public final Lcom/android/wm/shell/freeform/SmartPopupViewService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p2, v2

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    sget v0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->$r8$clinit:I

    iget-object p2, p2, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "[SmartPopupViewService] mPackageRemovedReceiver remove : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FreeformContainer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/SmartPopupViewService;->access$000(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;->this$0:Lcom/android/wm/shell/freeform/SmartPopupViewService;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->putPackageStrListToDB(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method
