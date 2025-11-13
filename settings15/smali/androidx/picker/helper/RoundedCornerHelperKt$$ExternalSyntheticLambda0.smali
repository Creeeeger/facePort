.class public final synthetic Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroidx/core/graphics/Insets;

.field public final synthetic f$2:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/core/graphics/Insets;Landroidx/appcompat/util/SeslRoundedCorner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$1:Landroidx/core/graphics/Insets;

    iput-object p3, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/util/SeslRoundedCorner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$1:Landroidx/core/graphics/Insets;

    iget-object p0, p0, Landroidx/picker/helper/RoundedCornerHelperKt$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/util/SeslRoundedCorner;

    const-string v2, "$this_seslSetRoundedCorner"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$roundedCorner"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(\n          \u2026onfig.ARGB_8888\n        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    :goto_0
    new-instance p0, Landroidx/picker/helper/SeslRoundedLayerDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "context.resources"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroidx/picker/helper/SeslRoundedLayerDrawable;

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5, p0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v4

    aput-object p0, v2, v3

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method
