.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->semIsResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->FORMAT:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuType()I

    move-result p0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z

    :cond_0
    return-void
.end method
