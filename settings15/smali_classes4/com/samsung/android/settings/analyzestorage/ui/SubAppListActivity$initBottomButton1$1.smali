.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $menuIdType:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->$menuIdType:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->isValidClick$default(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->$menuIdType:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CLEAR_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x22bd

    goto :goto_0

    :cond_0
    const/16 v0, 0x22c0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;->$menuIdType:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuType()I

    move-result p0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z

    :cond_1
    return-void
.end method
