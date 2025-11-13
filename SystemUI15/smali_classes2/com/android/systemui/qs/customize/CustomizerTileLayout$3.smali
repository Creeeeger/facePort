.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field public final synthetic val$emptyPos:I

.field public final synthetic val$fromtileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$fromtileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "CustomizerTileLayout"

    const-string v0, "moveTile onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$fromtileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    return-void
.end method
