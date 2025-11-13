.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

.field public final indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

.field public final indicatorGardenAlgorithmRightCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;

.field public final indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmRightCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;

    return-void
.end method
