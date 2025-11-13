.class public final Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0c56

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;->mView:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
