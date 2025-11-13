.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final heights:[I

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;->heights:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    return-void
.end method
