.class public Lcom/github/mikephil/charting/data/PieEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "PieEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private label:Ljava/lang/String;


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p0

    return p0
.end method
