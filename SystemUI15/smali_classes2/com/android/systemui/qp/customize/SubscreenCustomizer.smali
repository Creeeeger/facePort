.class public Lcom/android/systemui/qp/customize/SubscreenCustomizer;
.super Lcom/android/systemui/qs/QSPanel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDragListener:Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;

.field public mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public final mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

.field public mIsDragging:Z

.field public mIsDroppedOnView:Z

.field public mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

.field public mQuickSettingsContainer:Landroid/widget/LinearLayout;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDroppedOnView:Z

    iput-boolean p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDragging:Z

    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;)V

    const-string p1, "SubscreenCustomizer"

    invoke-static {p1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    return-void
.end method


# virtual methods
.method public final animationDrop(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;-><init>()V

    const/16 v1, 0xc9

    iput v1, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    iput-object p1, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onFinishInflate()V

    const-string v0, "SubscreenCustomizer"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0c66

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c63

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-void
.end method

.method public final updatePageIndicator$1$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    :cond_0
    return-void
.end method
