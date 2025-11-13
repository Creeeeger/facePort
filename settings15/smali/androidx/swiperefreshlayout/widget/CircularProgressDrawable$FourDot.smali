.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAlpha:I

.field public mCenterRadius:F

.field public mColors:[I

.field public mDotAnimation:Landroid/graphics/drawable/Drawable;

.field public final mDotPaint:Landroid/graphics/Paint;

.field public mDotRadius:F

.field public mIsRunning:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPosition:F

.field public mRotation:F

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    const/16 v2, 0xff

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
