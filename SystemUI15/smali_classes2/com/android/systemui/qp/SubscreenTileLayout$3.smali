.class public final Lcom/android/systemui/qp/SubscreenTileLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenTileLayout;

.field public final synthetic val$emptyPos:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenTileLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenTileLayout;

    iput p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout$3;->val$emptyPos:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SubscreenTileLayout"

    const-string v0, "moveTile onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenTileLayout;

    sget v0, Lcom/android/systemui/qp/SubscreenTileLayout;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/qp/SubscreenTileLayout$3;->val$emptyPos:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    const/4 p0, 0x0

    throw p0
.end method
