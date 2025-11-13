.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

.field public final mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

.field public final mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

.field public final mPanelViewSupplier:Ljava/util/function/Supplier;

.field public mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public final getParentViewGroup()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const v1, 0x7f0a0ac0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: it shows that two or more objects using the same view name may exist at the same time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageLabelParent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method
