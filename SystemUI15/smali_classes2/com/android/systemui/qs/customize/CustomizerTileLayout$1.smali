.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field public final synthetic val$idx:I

.field public final synthetic val$info:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public final synthetic val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public final synthetic val$tileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecCustomizeTileView;ILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$tileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
