.class public final Lcom/android/wm/shell/common/split/DividerPanel$2;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanel;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$width:I

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$height:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$width:I

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$height:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070aac

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
