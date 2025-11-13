.class public abstract Lcom/github/mikephil/charting/data/BaseDataSet;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawIcons:Z

.field protected mDrawValues:Z

.field private mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field protected mGradientColor:Lcom/github/mikephil/charting/model/GradientColor;

.field protected mGradientColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/model/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field protected mHighlightEnabled:Z

.field protected mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mLabel:Ljava/lang/String;

.field protected mValueColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field protected mValueTextSize:F

.field protected mValueTypeface:Landroid/graphics/Typeface;

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mGradientColor:Lcom/github/mikephil/charting/model/GradientColor;

    .line 34
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mGradientColors:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const-string v1, "DataSet"

    .line 44
    iput-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    .line 66
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 67
    iput v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    .line 68
    iput v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    .line 69
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 74
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    .line 79
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    .line 84
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v0, 0x41880000    # 17.0f

    .line 89
    iput v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    .line 94
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColor(I)I
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    return-object p0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object p0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public getFormLineWidth()F
    .locals 0

    .line 401
    iget p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    return p0
.end method

.method public getFormSize()F
    .locals 0

    .line 392
    iget p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    return p0
.end method

.method public getGradientColor()Lcom/github/mikephil/charting/model/GradientColor;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mGradientColor:Lcom/github/mikephil/charting/model/GradientColor;

    return-object p0
.end method

.method public getGradientColor(I)Lcom/github/mikephil/charting/model/GradientColor;
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mGradientColors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/model/GradientColor;

    return-object p0
.end method

.method public getGradientColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/model/GradientColor;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mGradientColors:Ljava/util/List;

    return-object p0
.end method

.method public getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->needsFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object p0

    return-object p0

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-object p0
.end method

.method public getValueTextColor(I)I
    .locals 1

    .line 364
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getValueTextSize()F
    .locals 0

    .line 374
    iget p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    return p0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public isDrawIconsEnabled()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    return p0
.end method

.method public isDrawValuesEnabled()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    return p0
.end method

.method public isHighlightEnabled()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 452
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    return p0
.end method

.method public needsFormatter()Z
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    return-void
.end method

.method public setDrawIcons(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    return-void
.end method

.method public setDrawValues(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-void
.end method

.method public setValueTextSize(F)V
    .locals 0

    .line 354
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    return-void
.end method
