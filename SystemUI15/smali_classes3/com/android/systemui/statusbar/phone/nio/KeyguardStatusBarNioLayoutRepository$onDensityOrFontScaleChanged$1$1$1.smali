.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->gardenScale:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->iconSize:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconSize:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconSize:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->gardenScale:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconScaleRatio:F

    cmpg-float v1, v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconScaleRatio:F

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :goto_0
    return-void
.end method
