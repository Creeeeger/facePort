.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2293

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void

    :pswitch_0
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->storageOperation(Landroid/content/Context;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
