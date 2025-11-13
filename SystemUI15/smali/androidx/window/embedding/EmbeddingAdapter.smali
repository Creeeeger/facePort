.class public final Landroidx/window/embedding/EmbeddingAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

.field public final api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

.field public final api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Landroidx/window/embedding/EmbeddingAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/embedding/EmbeddingAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/window/core/PredicateAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-direct {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    new-instance p1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;)V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    new-instance p1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;)V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    return-void
.end method

.method public static translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;
    .locals 5

    new-instance v0, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    move-result-object v1

    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;

    if-eqz v2, :cond_0

    sget-object v1, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$ExpandContainersSplitType;

    if-eqz v2, :cond_1

    sget-object v1, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    if-eqz v2, :cond_e

    sget-object v2, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    check-cast v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->getRatio()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    if-ne v1, v2, :cond_2

    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown layout direction: "

    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    :cond_4
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    :cond_5
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    :cond_6
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    :goto_1
    iput-object v1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    sget-object v1, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v4

    iget v4, v4, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    if-lt v4, v2, :cond_8

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationBackground()Landroidx/window/extensions/embedding/AnimationBackground;

    move-result-object v2

    instance-of v4, v2, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/window/embedding/EmbeddingAnimationBackground;->Companion:Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;

    check-cast v2, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;->getColor()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    invoke-direct {v4, v2}, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;-><init>(I)V

    goto :goto_2

    :cond_7
    sget-object v4, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;

    :goto_2
    iput-object v4, v0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v2

    iget v2, v2, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_d

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getDividerAttributes()Landroidx/window/extensions/embedding/DividerAttributes;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    if-nez p0, :cond_9

    sget-object p0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown divider type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".dividerType, default to fixed divider type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/window/embedding/EmbeddingAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    invoke-direct {v1}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v3

    sget-object v4, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v4, v3}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput v3, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result p0

    invoke-static {v4, p0}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput p0, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    new-instance p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    iget v3, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    iget v1, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    invoke-direct {p0, v3, v1, v2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_a
    new-instance v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    invoke-direct {v1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v3

    sget-object v4, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v4, v3}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput v3, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result v3

    invoke-static {v4, v3}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput v3, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMinRatio()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_b

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMaxRatio()F

    move-result v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_b

    sget-object p0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange$Companion$DRAG_RANGE_SYSTEM_DEFAULT$1;

    goto :goto_3

    :cond_b
    new-instance v3, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMinRatio()F

    move-result v4

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMaxRatio()F

    move-result p0

    invoke-direct {v3, v4, p0}, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;-><init>(FF)V

    move-object p0, v3

    :goto_3
    iput-object p0, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    new-instance p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    iget v3, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    iget v4, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    iget-object v1, v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-direct {p0, v3, v4, v1, v2}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_c
    new-instance v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    invoke-direct {v1}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v3

    sget-object v4, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v4, v3}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput v3, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result p0

    invoke-static {v4, p0}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput p0, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    new-instance p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    iget v3, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->widthDp:I

    iget v1, v1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->color:I

    invoke-direct {p0, v3, v1, v2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    iput-object p0, v0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    :cond_d
    new-instance p0, Landroidx/window/embedding/SplitAttributes;

    iget-object v1, v0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v2, v0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v3, v0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iget-object v0, v0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    invoke-direct {p0, v1, v2, v3, v0}, Landroidx/window/embedding/SplitAttributes;-><init>(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/DividerAttributes;)V

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown split type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final translate(Ljava/util/List;)Ljava/util/List;
    .locals 9

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/SplitInfo;

    sget-object v2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v2

    const/4 v3, 0x1

    iget v2, v2, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/window/embedding/SplitInfo;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v3

    invoke-static {v3}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v4

    invoke-static {v4}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v4

    new-instance v5, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {v5}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    sget-object v6, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitRatio()F

    move-result v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget v7, v6, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    cmpg-float v7, v1, v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v6

    :goto_1
    iput-object v6, v5, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iput-object v1, v5, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    new-instance v1, Landroidx/window/embedding/SplitAttributes;

    iget-object v6, v5, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v7, v5, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v8, v5, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iget-object v5, v5, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    invoke-direct {v1, v6, v7, v8, v5}, Landroidx/window/embedding/SplitAttributes;-><init>(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/DividerAttributes;)V

    invoke-direct {v2, v3, v4, v1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v2, Landroidx/window/embedding/SplitInfo;

    iget-object v3, p0, Landroidx/window/embedding/EmbeddingAdapter;->api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    iget-object v4, v3, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v5

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v1

    invoke-static {v1}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;

    move-result-object v1

    invoke-direct {v2, v4, v3, v1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-gt v3, v2, :cond_3

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    new-instance v2, Landroidx/window/embedding/SplitInfo;

    iget-object v3, p0, Landroidx/window/embedding/EmbeddingAdapter;->api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    iget-object v4, v3, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v5

    iget-object v3, v3, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v5

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v2, v4, v3, v5, v1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;Landroid/os/IBinder;)V

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/window/embedding/SplitInfo;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v5

    invoke-static {v5}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitInfoToken()Landroidx/window/extensions/embedding/SplitInfo$Token;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;Landroidx/window/extensions/embedding/SplitInfo$Token;)V

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public final translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;
    .locals 2

    sget-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object v0

    const/4 v1, 0x1

    iget v0, v0, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    if-gt v1, v0, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivityStackToken()Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;ZLandroidx/window/extensions/embedding/ActivityStack$Token;)V

    :goto_0
    return-object p0
.end method
