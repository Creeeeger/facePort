.class public Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentFontScale:F

.field public maxFontScale:F

.field public originalTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3fa66666    # 1.3f

    iput p3, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    sget-object v0, Lcom/android/systemui/res/R$styleable;->QSTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$init$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$init$1;-><init>(Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$init$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p1, p2

    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method
