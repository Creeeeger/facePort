.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _guidedEnrollment:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final guidedEnrollmentOffset:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final isGuidedEnrollment:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;)V
    .locals 7

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x5

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    const/4 v4, 0x0

    mul-float v5, p1, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f5eb852    # 0.87f

    mul-float/2addr v3, p1

    const v5, -0x3fd33333    # -2.7f

    mul-float/2addr v5, p1

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x4019999a    # -1.8f

    mul-float/2addr v3, p1

    const v5, -0x405851ec    # -1.31f

    mul-float/2addr v5, p1

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v2, v0, v5

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3fa7ae14    # 1.31f

    mul-float/2addr v5, p1

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f6147ae    # 0.88f

    mul-float/2addr v3, p1

    const v5, 0x402ccccd    # 2.7f

    mul-float/2addr v5, p1

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x407c28f6    # 3.94f

    mul-float/2addr v5, p1

    const v6, -0x407851ec    # -1.06f

    mul-float/2addr v6, p1

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x4039999a    # 2.9f

    mul-float/2addr v2, p1

    const v5, -0x3f7b851f    # -4.14f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, -0x40fae148    # -0.52f

    mul-float/2addr v2, p1

    const v5, -0x3f41999a    # -5.95f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, -0x3faae148    # -3.33f

    mul-float/2addr v2, p1

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, -0x3f80a3d7    # -3.99f

    mul-float/2addr v2, p1

    const v5, -0x414ccccd    # -0.35f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, -0x3f9851ec    # -3.62f

    mul-float/2addr v2, p1

    const v5, 0x40228f5c    # 2.54f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, -0x404147ae    # -1.49f

    mul-float/2addr v2, p1

    const v5, 0x40b23d71    # 5.57f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x40128f5c    # 2.29f

    mul-float/2addr v2, p1

    const v5, 0x409d70a4    # 4.92f

    mul-float/2addr v5, p1

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x40747ae1    # 3.82f

    mul-float/2addr v2, p1

    const v5, 0x3fe3d70a    # 1.78f

    mul-float/2addr p1, v5

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 p1, 0xd

    aput-object v1, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;->isAccessibilityEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p2, p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    return-void
.end method
