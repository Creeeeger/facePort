.class public final Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;


# instance fields
.field public final mColorOption:Z

.field public final mIsSupport:Z

.field public final mKey:Ljava/lang/String;

.field public final mPreviewImgResID:I

.field public final mTitleStrID:I

.field public final mTransparencyOption:Z

.field public final mWidthOption:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    iput-boolean p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    iput p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    iput-boolean p8, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v1, v0, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07138b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    iget-object p0, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-object v1
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportEffect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return p0
.end method

.method public final isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle$1;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    :cond_3
    :goto_0
    return v0
.end method
