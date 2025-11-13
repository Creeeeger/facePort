.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;
.source "WeeklyIconXAxisRenderer.java"


# instance fields
.field private mIconBad:Landroid/graphics/drawable/Drawable;

.field private mIconGood:Landroid/graphics/drawable/Drawable;

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMargin:F

.field private mIconSize:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Landroid/content/Context;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->ic_dw_ic_done:I

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconGood:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    .line 39
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->dw_status_good_color:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->ic_dw_ic_failed:I

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconBad:Landroid/graphics/drawable/Drawable;

    .line 41
    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    .line 42
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->dw_status_bad_color:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 44
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->goal_weekly_result_chart_ox_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconSize:I

    .line 45
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->goal_weekly_result_xlabel_image_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconSize:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconMargin:F

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 8

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    const/4 p3, 0x0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 73
    aget v0, v0, p3

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconList:Ljava/util/ArrayList;

    div-int/lit8 v2, p3, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    float-to-int v4, v0

    .line 77
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconMargin:F

    add-float/2addr v0, p2

    float-to-int v5, v0

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconSize:I

    move-object v2, p1

    move v6, v7

    invoke-static/range {v2 .. v7}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method
