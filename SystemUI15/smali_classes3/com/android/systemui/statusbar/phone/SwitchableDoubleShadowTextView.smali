.class public final Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public aggregatedVisible:Z

.field public final mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public shadowEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    :try_start_0
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    new-instance v7, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v10, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v10, v4, v6, v8, v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v4, v1, v9

    aput-object v4, v1, v3

    aput-object v4, v1, v5

    aput-object v4, v1, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v8, v4

    move v15, v9

    :goto_0
    if-ge v15, v8, :cond_1

    aget-object v13, v4, v15

    if-eqz v13, :cond_0

    new-instance v16, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    move-object/from16 v10, v16

    move v14, v2

    move/from16 v17, v15

    move v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    aput-object v16, v1, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v15

    :goto_1
    add-int/lit8 v15, v17, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v1, v9

    aget-object v3, v1, v3

    aget-object v4, v1, v5

    aget-object v1, v1, v7

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$onDraw$s-938935918(Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->shadowEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    new-instance v3, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView$onDraw$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView$onDraw$1;-><init>(Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0, p1, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->aggregatedVisible:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->aggregatedVisible:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method
