.class public final Lcom/android/systemui/animation/FontInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

.field public static final DEBUG:Z

.field public static final EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;


# instance fields
.field public final interpCache:Landroid/util/LruCache;

.field public final tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

.field public final tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

.field public final verFontCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/FontInterpolator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/FontInterpolator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    const-string v0, "FontInterpolator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    sput-object v0, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(IILjava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    :cond_3
    array-length v6, v4

    if-nez v6, :cond_4

    array-length v6, v5

    if-nez v6, :cond_4

    return-object v1

    :cond_4
    iget-object v6, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    iput-object v1, v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iput-object v2, v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iput v3, v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    iget-object v7, v0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    invoke-virtual {v7, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/Font;

    sget-boolean v8, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    const-string v9, "["

    const-string v10, "FontInterpolator"

    if-eqz v7, :cond_6

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] Interp. cache hit for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v7

    :cond_6
    new-instance v7, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;

    invoke-direct {v7, v3, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;-><init>(FLcom/android/systemui/animation/FontInterpolator;)V

    array-length v11, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    new-instance v11, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    invoke-direct {v11}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>()V

    array-length v13, v4

    if-le v13, v12, :cond_7

    invoke-static {v4, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_7
    array-length v11, v5

    if-le v11, v12, :cond_8

    new-instance v11, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$2;

    invoke-direct {v11}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$2;-><init>()V

    array-length v13, v5

    if-le v13, v12, :cond_8

    invoke-static {v5, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    array-length v13, v4

    if-lt v14, v13, :cond_9

    array-length v13, v5

    if-ge v15, v13, :cond_a

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v4, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    iget-object v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v12, :cond_b

    new-instance v7, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;

    invoke-direct {v7}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;-><init>()V

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_b
    iget-object v5, v0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/Font;

    if-eqz v5, :cond_d

    iget-object v0, v0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    new-instance v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    invoke-direct {v6, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    invoke-virtual {v0, v6, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] Axis cache hit for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v5

    :cond_d
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v5, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    const/4 v13, 0x0

    new-array v7, v13, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v5, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    iget-object v7, v0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    new-instance v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    invoke-direct {v8, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    invoke-virtual {v7, v8, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    new-instance v2, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    invoke-direct {v2, v1, v11}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(Landroid/graphics/fonts/Font;Ljava/util/List;)V

    invoke-virtual {v0, v2, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] Cache MISS for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :goto_1
    array-length v12, v4

    if-ge v14, v12, :cond_e

    aget-object v12, v4, v14

    invoke-virtual {v12}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_e
    const/4 v12, 0x0

    :goto_2
    array-length v13, v5

    if-ge v15, v13, :cond_f

    aget-object v13, v5, v15

    invoke-virtual {v13}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_f
    const/4 v13, 0x0

    :goto_3
    if-nez v12, :cond_10

    const/16 v17, 0x1

    goto :goto_4

    :cond_10
    if-nez v13, :cond_11

    const/16 v17, -0x1

    goto :goto_4

    :cond_11
    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    :goto_4
    if-nez v17, :cond_12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v4, v14

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    add-int/lit8 v16, v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v15}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v7, v12, v14, v15}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v15, v12, v14}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v14, v13

    move/from16 v0, v16

    goto :goto_5

    :cond_12
    if-gez v17, :cond_13

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v4, v14

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v0, 0x0

    invoke-virtual {v7, v12, v14, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    new-instance v14, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v14, v12, v0}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    move v0, v15

    move-object v15, v14

    move v14, v13

    goto :goto_5

    :cond_13
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v0, v15, 0x1

    aget-object v12, v5, v15

    invoke-virtual {v12}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v7, v13, v15, v12}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v15, v13, v12}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    :goto_5
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method
