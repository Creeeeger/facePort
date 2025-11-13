.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/FormatMenu;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/FormatMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    return-void
.end method


# virtual methods
.method public final getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/FormatMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    if-eqz p0, :cond_0

    iget v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    const/16 v3, 0x190

    invoke-virtual {p0, v3, v2, v1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getDialog(IILcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    return-object v0
.end method

.method public final result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 0

    return-void
.end method
