.class public final Lcom/airbnb/lottie/compose/LottieDynamicProperties;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bitmapProperties:Ljava/util/List;

.field public final charSequenceProperties:Ljava/util/List;

.field public final colorFilterProperties:Ljava/util/List;

.field public final floatProperties:Ljava/util/List;

.field public final intArrayProperties:Ljava/util/List;

.field public final intProperties:Ljava/util/List;

.field public final pointFProperties:Ljava/util/List;

.field public final scaleProperties:Ljava/util/List;

.field public final typefaceProperties:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 11

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v3, v3, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v4, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v4, v4, Landroid/graphics/PointF;

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v6, v6, Lcom/airbnb/lottie/value/ScaleXY;

    if-eqz v6, :cond_6

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v7, v7, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v7, v7, Landroid/graphics/ColorFilter;

    if-eqz v7, :cond_8

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v8, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v8, v8, [Ljava/lang/Object;

    if-eqz v8, :cond_a

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v9, v9, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v9, v9, Landroid/graphics/Typeface;

    if-eqz v9, :cond_c

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v10, v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v10, v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_e

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v10, v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_10

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intProperties:Ljava/util/List;

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->pointFProperties:Ljava/util/List;

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->floatProperties:Ljava/util/List;

    iput-object v3, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->scaleProperties:Ljava/util/List;

    iput-object v4, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->colorFilterProperties:Ljava/util/List;

    iput-object v5, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->intArrayProperties:Ljava/util/List;

    iput-object v6, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->typefaceProperties:Ljava/util/List;

    iput-object v7, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->bitmapProperties:Ljava/util/List;

    iput-object v8, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->charSequenceProperties:Ljava/util/List;

    return-void
.end method
