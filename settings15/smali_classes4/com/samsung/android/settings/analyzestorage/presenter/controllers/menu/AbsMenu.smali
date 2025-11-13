.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

.field public final listItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

.field public final pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "getListItemHandler(...)"

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->listItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    return-void
.end method


# virtual methods
.method public abstract getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
.end method

.method public abstract result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
.end method
