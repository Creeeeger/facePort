.class public final synthetic Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$400(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-boolean v0, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->access$500(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->animationDrop(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V

    :cond_0
    return-void
.end method
