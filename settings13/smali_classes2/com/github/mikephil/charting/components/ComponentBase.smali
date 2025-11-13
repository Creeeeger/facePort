.class public abstract Lcom/github/mikephil/charting/components/ComponentBase;
.super Ljava/lang/Object;
.source "ComponentBase.java"


# instance fields
.field protected mEnabled:Z

.field protected mTextColor:I

.field protected mTextSize:F

.field protected mTypeface:Landroid/graphics/Typeface;

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    .line 39
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    const/high16 v0, -0x1000000

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return-void
.end method


# virtual methods
.method public getTextColor()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return p0
.end method

.method public getTextSize()F
    .locals 0

    .line 131
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getXOffset()F
    .locals 0

    .line 58
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    return p0
.end method

.method public getYOffset()F
    .locals 0

    .line 77
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return-void
.end method
