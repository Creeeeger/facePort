.class public Lcom/github/mikephil/charting/components/LimitLine;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "LimitLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    }
.end annotation


# instance fields
.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mLabel:Ljava/lang/String;

.field private mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field private mLimit:F

.field private mLineColor:I

.field private mLineWidth:F

.field private mTextStyle:Landroid/graphics/Paint$Style;


# virtual methods
.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object p0
.end method

.method public getLimit()F
    .locals 0

    .line 74
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    return p0
.end method

.method public getLineColor()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    return p0
.end method

.method public getLineWidth()F
    .locals 0

    .line 98
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    return p0
.end method

.method public getTextStyle()Landroid/graphics/Paint$Style;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    return-object p0
.end method
