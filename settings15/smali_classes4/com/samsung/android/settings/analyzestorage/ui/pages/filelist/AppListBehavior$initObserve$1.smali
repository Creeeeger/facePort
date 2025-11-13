.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $subTitle:Landroid/widget/TextView;

.field public final synthetic $title:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->$title:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->$subTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->$title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    const v2, 0x7f14043c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12000d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;->$subTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
