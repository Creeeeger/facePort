.class public final Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;


# instance fields
.field public final mCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;->mCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public final onInflateView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;->mCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x88

    goto :goto_0

    :cond_0
    const/16 p0, 0x89

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method
