.class public final Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;
.super Landroid/widget/TextClock;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final paddingDividedOffset:I


# instance fields
.field public final attributesInput:Landroid/content/res/TypedArray;

.field public mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->paddingDividedOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->initializeAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p6, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->attributesInput:Landroid/content/res/TypedArray;

    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->initializeAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/TypedArray;)V

    return-void
.end method

.method public static final synthetic access$onDraw$s940309185(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final initializeAttributes(Landroid/util/AttributeSet;II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->attributesInput:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->resources:Landroid/content/res/Resources;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x5

    :try_start_0
    invoke-virtual {v0, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    new-instance v5, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p3, p3

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v5, p3, v1, v2, v4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v4, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p3, p3

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v4, p3, v1, v2, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/16 p3, 0x8

    invoke-virtual {v0, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz p3, :cond_3

    const p3, 0x7f050060

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    if-eqz p1, :cond_2

    iget p1, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    sget p3, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->paddingDividedOffset:I

    div-int/2addr p1, p3

    add-int/2addr v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget p1, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    sub-int/2addr v1, p1

    :goto_0
    invoke-virtual {p0, p2, p2, p2, v1}, Landroid/widget/TextClock;->setPaddingRelative(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    new-instance v3, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0, p1, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
