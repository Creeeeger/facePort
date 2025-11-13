.class public final Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final baseSmallestWidth:F

.field public latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

.field public final logEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->logEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105056e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;-><init>(FIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "   baseSmallestWidth="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "   Display device type (-1: Undefined, 0: Main, 5: Sub)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->baseSmallestWidth:F

    div-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x105056e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;-><init>(FIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->logEnabled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scale model changed from="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IndicatorScaleGardener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->latestScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    return-object p0
.end method
