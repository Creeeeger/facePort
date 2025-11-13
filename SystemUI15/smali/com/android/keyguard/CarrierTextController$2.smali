.class public final Lcom/android/keyguard/CarrierTextController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$1000(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/CarrierText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/CarrierText;->setTextSize(IF)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ratio="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " font size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mLastScaleEvent:Ljava/lang/String;

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController$2;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
