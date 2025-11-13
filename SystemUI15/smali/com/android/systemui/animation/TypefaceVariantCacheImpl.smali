.class public final Lcom/android/systemui/animation/TypefaceVariantCacheImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/TypefaceVariantCache;


# instance fields
.field public final baseTypeface:Landroid/graphics/Typeface;

.field public final cache:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->baseTypeface:Landroid/graphics/Typeface;

    new-instance p1, Landroid/util/LruCache;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->cache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public final getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->baseTypeface:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->baseTypeface:Landroid/graphics/Typeface;

    sget-object v1, Lcom/android/systemui/animation/TypefaceVariantCache;->Companion:Lcom/android/systemui/animation/TypefaceVariantCache$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v2, Lcom/android/systemui/animation/TypefaceVariantCache$Companion$createVariantTypeface$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/animation/TypefaceVariantCache$Companion$createVariantTypeface$1;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
