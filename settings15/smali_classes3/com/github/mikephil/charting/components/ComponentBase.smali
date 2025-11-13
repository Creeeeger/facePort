.class public abstract Lcom/github/mikephil/charting/components/ComponentBase;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnabled:Z

.field public mTextColor:I

.field public mTextSize:F

.field public mTypeface:Landroid/graphics/Typeface;

.field public mXOffset:F

.field public mYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return-void
.end method


# virtual methods
.method public final setTextSize(F)V
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return-void
.end method
