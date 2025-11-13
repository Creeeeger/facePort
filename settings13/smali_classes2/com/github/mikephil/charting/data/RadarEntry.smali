.class public Lcom/github/mikephil/charting/data/RadarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "RadarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# virtual methods
.method public getX()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p0

    return p0
.end method
