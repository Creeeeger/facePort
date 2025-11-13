.class public final Lcom/android/systemui/util/BrightnessProgressDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/android/systemui/util/BrightnessProgressDrawable$Companion;

.field private static final MAX_LEVEL:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/BrightnessProgressDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/BrightnessProgressDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/BrightnessProgressDrawable;->Companion:Lcom/android/systemui/util/BrightnessProgressDrawable$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/util/BrightnessProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/util/BrightnessProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getChangingConfigurations()I
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getChangingConfigurations()I

    move-result p0

    or-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/BrightnessProgressDrawable$RoundedCornerState;

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/systemui/util/BrightnessProgressDrawable$RoundedCornerState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/BrightnessProgressDrawable;->onLevelChange(I)Z

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/BrightnessProgressDrawable;->onLevelChange(I)Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLayoutDirectionChanged(I)Z

    move-result p0

    return p0
.end method

.method public onLevelChange(I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x2710

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v2, v5, :cond_1

    move v2, v5

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v2, v5, :cond_2

    move v2, v5

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLevelChange(I)Z

    move-result p0

    return p0
.end method
