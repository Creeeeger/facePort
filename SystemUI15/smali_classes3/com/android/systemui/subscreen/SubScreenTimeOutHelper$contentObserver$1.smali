.class public final Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    sget p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->readScreenTimeOut()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    iget v0, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    if-eq p1, v0, :cond_1

    iget-object v0, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->layoutParamsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->windowManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput p1, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    :cond_1
    return-void
.end method
