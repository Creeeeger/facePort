.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $appInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;->$appInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;->$appInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p0, 0x10008000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string p1, "handleItemClick"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleItemClick() ] ActivityNotFoundException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
