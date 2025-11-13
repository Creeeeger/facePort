.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton2$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->isValidClick$default(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton2$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    const/16 v0, 0x2ee

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z

    :cond_0
    return-void
.end method
