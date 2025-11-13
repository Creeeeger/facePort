.class public Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBgBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mIsMultiResolutionSupoorted:Z

.field public mIsNoFrame:Z

.field public mMaskBgPaint:Landroid/graphics/Paint;

.field public mMaskPaint:Landroid/graphics/Paint;

.field public final mMaskPath:Landroid/graphics/Path;

.field public mMaskingEdgeArea:Z

.field public mOrientation:I

.field public final mOutsideMaskPath:Landroid/graphics/Path;

.field public mStrokeWidth:F

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    if-eqz v0, :cond_0

    goto/16 :goto_14

    :cond_0
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    if-nez v0, :cond_1

    goto/16 :goto_13

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0xff

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME_FOR_JPN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sput-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    :cond_2
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S938"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f071413

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_3
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S937"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f071412    # 1.7955E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_4
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S936"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f071411

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_5
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S931"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f071410

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_6
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S928"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f07140f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_7
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S926"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f07140e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_8
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S921"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f07140d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_9
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S918"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f07140c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_a
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S916"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const v4, 0x7f07140b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_b
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S911"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x7f07140a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_c
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S908"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f071409

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_d
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S906"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f071408

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_e
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S901"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f071407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_f
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-N980"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f071403

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_10
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-N981"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f071404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_11
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-N98"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f071405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_12
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-N97"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f071402

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_13
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-N77"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f071401

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_14
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G981"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f0713fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_15
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G988"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f0713fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_16
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G98"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f0713fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_17
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G97"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f0713fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_18
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G715"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f0713f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_19
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G77"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f0713f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_1a
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G78"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f0713f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_1b
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F74"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F73"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F72"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W7023"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W7024"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_a

    :cond_1c
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F71"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f0713e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_1d
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const v4, 0x7f0713eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_1e
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F95"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W9025"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_8

    :cond_1f
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F94"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F93"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W9023"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W9024"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_6

    :cond_20
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W2021"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_21

    const v4, 0x7f071417

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_21
    const v4, 0x7f071416

    goto :goto_0

    :cond_22
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F92"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-W2022"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_4

    :cond_23
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F91"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_24

    const v4, 0x7f0713ef

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_24
    const v4, 0x7f0713ee

    goto :goto_1

    :cond_25
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-F90"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_26

    const v4, 0x7f0713ed    # 1.7954924E38f

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_26
    const v4, 0x7f0713ec

    goto :goto_2

    :cond_27
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G991"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    const v4, 0x7f0713fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_28
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G99"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S71"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto/16 :goto_3

    :cond_29
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-S72"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const v4, 0x7f071406

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2a
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-G52"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const v4, 0x7f0713f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2b
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-A51"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const v4, 0x7f0713e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2c
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-A52"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const v4, 0x7f0713e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2d
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-A72"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const v4, 0x7f0713e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2e
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-A71"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const v4, 0x7f0713e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_2f
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-A32"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const v4, 0x7f0713e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_30
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-T97"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    const v4, 0x7f071415

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_31
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-T87"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    const v4, 0x7f071414

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_c

    :cond_32
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v5, "SM-M127"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const v4, 0x7f071400

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_33
    const v4, 0x7f0713e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_34
    :goto_3
    const v4, 0x7f0713ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_35
    :goto_4
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_36

    const v4, 0x7f0713f1

    :goto_5
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_36
    const v4, 0x7f0713f0

    goto :goto_5

    :cond_37
    :goto_6
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_38

    const v4, 0x7f0713f3

    :goto_7
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_38
    const v4, 0x7f0713f2

    goto :goto_7

    :cond_39
    :goto_8
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_3a

    const v4, 0x7f0713f5

    :goto_9
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_3a
    const v4, 0x7f0713f4

    goto :goto_9

    :cond_3b
    :goto_a
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_3c

    const v4, 0x7f0713ea

    :goto_b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_c

    :cond_3c
    const v4, 0x7f0713e9

    goto :goto_b

    :goto_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v4, :cond_3d

    goto :goto_d

    :cond_3d
    move v5, v4

    :goto_d
    sget v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_DEFAULT_DENSITY:I

    int-to-float v4, v4

    if-eqz v2, :cond_3f

    int-to-float v2, v5

    const/high16 v5, 0x44870000    # 1080.0f

    cmpl-float v6, v2, v5

    if-lez v6, :cond_3e

    const v2, 0x3faaa993    # 1.3333f

    :goto_e
    mul-float/2addr v4, v2

    goto :goto_f

    :cond_3e
    cmpg-float v2, v2, v5

    if-gez v2, :cond_3f

    const v2, 0x3f2aacda    # 0.6667f

    goto :goto_e

    :cond_3f
    :goto_f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v1, v3

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reduce_screen_running_info"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_40

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_10

    :cond_40
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_10
    const v4, 0x3f266666    # 0.65f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_41

    const v5, 0x3feccccd    # 1.85f

    sub-float/2addr v5, v3

    mul-float/2addr v5, v3

    goto :goto_11

    :cond_41
    move v5, v3

    :goto_11
    sget-boolean v6, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_CANVAS:Z

    if-nez v6, :cond_42

    sget-boolean v6, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_TOP:Z

    if-eqz v6, :cond_43

    :cond_42
    const v5, 0x3ff9999a    # 1.95f

    sub-float/2addr v5, v3

    mul-float/2addr v5, v3

    if-gez v4, :cond_43

    const v4, 0x40033333    # 2.05f

    sub-float/2addr v4, v3

    mul-float v5, v4, v3

    :cond_43
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v1, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    mul-float v12, v1, v5

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    int-to-float v1, v1

    sub-float v9, v1, v8

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    int-to-float v1, v1

    sub-float v10, v1, v8

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v8

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_12

    :cond_44
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->makeSubScreenPath(Landroid/graphics/Path;FFF)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->makeSubScreenPath(Landroid/graphics/Path;FFF)V

    goto :goto_12

    :cond_45
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    int-to-float v8, v2

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    int-to-float v9, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v10, v1

    move v11, v1

    move-object v12, v2

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    int-to-float v8, v3

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    int-to-float v9, v3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :goto_12
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_46
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_48
    :goto_13
    return-void

    :cond_49
    :goto_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final initializeScreen()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x18894

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "high_contrast"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public final makeSubScreenPath(Landroid/graphics/Path;FFF)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3ef851ec    # 0.485f

    const v11, 0x3f051eb8    # 0.52f

    const v12, 0x3f147ae1    # 0.58f

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v7, :cond_0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v4, v1, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v7, v2, v5

    sub-float v14, v7, v3

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v7, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v4, v1, v12

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v1, v11

    mul-float/2addr v10, v1

    div-float/2addr v5, v13

    sub-float v5, v2, v5

    invoke-virtual {v0, v4, v7, v10, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v4, v1, v9

    mul-float/2addr v1, v8

    invoke-virtual {v0, v4, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v2, v3

    invoke-virtual {v0, v6, v2, v6, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v1, v3, v6

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3f0ccccd    # 0.55f

    const v16, 0x3f03d70a    # 0.515f

    const v17, 0x3ef5c28f    # 0.48f

    const v18, 0x3ed70a3d    # 0.42f

    if-nez v7, :cond_1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v4, v1, v5

    sub-float v7, v4, v3

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v6, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v7, v2, v18

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v7, v2, v17

    div-float/2addr v5, v13

    sub-float v5, v1, v5

    mul-float v8, v2, v16

    invoke-virtual {v0, v4, v7, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v4, v2, v15

    mul-float v5, v2, v14

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v4, v2, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v5, v1, v3

    invoke-virtual {v0, v1, v2, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v2, v6, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_1
    cmpl-float v4, v4, v13

    if-nez v4, :cond_2

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v4, v1, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v1, v17

    mul-float v7, v1, v16

    div-float v8, v5, v13

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v4, v1, v15

    mul-float v7, v1, v14

    invoke-virtual {v0, v4, v6, v7, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v4, v1, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v7, v2, v3

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v2, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-float v1, v5, v3

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v5, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v4, v1, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v7, v2, v3

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-float v1, v5, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v5, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v1, v2, v12

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v1, v2, v11

    div-float v4, v5, v13

    mul-float v7, v2, v10

    invoke-virtual {v0, v5, v1, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    mul-float v1, v2, v9

    mul-float/2addr v2, v8

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
