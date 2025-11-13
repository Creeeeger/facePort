.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$bindDataObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$bindDataObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$bindDataObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageUsedSize:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->updateSize(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
