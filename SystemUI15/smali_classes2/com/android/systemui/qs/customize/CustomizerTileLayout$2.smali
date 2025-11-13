.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field public final synthetic val$idx:I

.field public final synthetic val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

.field public final synthetic val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "CustomizerTileLayout"

    const-string v0, "moveTile onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
