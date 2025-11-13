.class public final Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDismissingDimValue:F

.field public final mDismissingSide:I

.field public final mParallaxOffset:Landroid/graphics/Point;

.field public final mParallaxType:I

.field public final mShrinkSide:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mShrinkSide:I

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingSide:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingDimValue:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxType:I

    return-void
.end method
