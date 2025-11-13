.class public final Landroidx/compose/ui/text/font/AndroidFontLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final awaitLoad(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    iget v1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;-><init>(Landroidx/compose/ui/text/font/AndroidFontLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/text/font/Font;

    iget-object p0, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/font/AndroidFontLoader;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p2, p1, Landroidx/compose/ui/text/font/AndroidFont;

    if-nez p2, :cond_7

    instance-of p2, p1, Landroidx/compose/ui/text/font/ResourceFont;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object v5, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    iput-object p0, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->label:I

    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget v6, p2, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    new-instance v9, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2$1;

    invoke-direct {v9, v2, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroidx/compose/ui/text/font/ResourceFont;)V

    sget-object p2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, -0x4

    invoke-virtual {v9, p2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V

    goto :goto_1

    :cond_4
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Landroid/graphics/Typeface;

    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object p1, p1, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    invoke-static {p2, p1, p0}, Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;->setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown font type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    iget-object p0, p1, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    iput v4, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->label:I

    check-cast p0, Landroidx/compose/ui/text/font/NamedFontLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "All preloaded fonts are optional local."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCacheKey()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Landroidx/compose/ui/text/font/AndroidFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    iget-object v0, p1, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    check-cast v0, Landroidx/compose/ui/text/font/NamedFontLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_e

    new-instance v0, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;-><init>()V

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v2, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v5, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v2, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v2, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v2, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/font/FontStyle;->Italic:I

    invoke-static {v5, v2}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v2

    sget-object v3, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v7, v4, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1, v4, v5}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v1, v0

    :cond_6
    :goto_1
    move-object v0, v1

    :goto_2
    iget-object p1, p1, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {v0, p1, p0}, Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;->setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_8

    :cond_7
    instance-of v0, p1, Landroidx/compose/ui/text/font/ResourceFont;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/ResourceFont;

    sget-object v2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget v0, v0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    invoke-static {v0, v2}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object v2, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v3, v0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    sget v2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->OptionalLocal:I

    invoke-static {v0, v2}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object v2, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v0, v1

    goto :goto_4

    :cond_a
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget v3, v0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_5
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v0

    :goto_6
    check-cast v1, Landroid/graphics/Typeface;

    :goto_7
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->context:Landroid/content/Context;

    iget-object p1, p1, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {v1, p1, p0}, Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;->setFontVariationSettings(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_8

    :cond_c
    sget p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Async:I

    invoke-static {v0, p0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported Async font load path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown loading type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_8
    return-object v1
.end method
