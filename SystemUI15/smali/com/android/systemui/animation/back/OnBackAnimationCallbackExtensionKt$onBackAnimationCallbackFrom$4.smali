.class public final Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic $backAnimationSpec:Lcom/android/systemui/animation/back/BackAnimationSpec;

.field public final synthetic $displayMetrics:Landroid/util/DisplayMetrics;

.field public final synthetic $onBackCancelled:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onBackInvoked:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onBackProgressed:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onBackStarted:Lkotlin/jvm/functions/Function1;

.field public initialY:F

.field public final lastTransformation:Lcom/android/systemui/animation/back/BackTransformation;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/util/DisplayMetrics;Lcom/android/systemui/animation/back/BackAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/systemui/animation/back/BackAnimationSpec;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackStarted:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$displayMetrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$backAnimationSpec:Lcom/android/systemui/animation/back/BackAnimationSpec;

    iput-object p4, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackProgressed:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackInvoked:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackCancelled:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/animation/back/BackTransformation;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/back/BackTransformation;-><init>(FFFLcom/android/systemui/animation/back/ScalePivotPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->lastTransformation:Lcom/android/systemui/animation/back/BackTransformation;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackCancelled:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackInvoked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->initialY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$backAnimationSpec:Lcom/android/systemui/animation/back/BackAnimationSpec;

    iget-object v2, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->lastTransformation:Lcom/android/systemui/animation/back/BackTransformation;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/systemui/animation/back/BackAnimationSpec;->getBackTransformation(Landroid/window/BackEvent;FLcom/android/systemui/animation/back/BackTransformation;)V

    iget-object p1, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackProgressed:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->lastTransformation:Lcom/android/systemui/animation/back/BackTransformation;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->initialY:F

    iget-object p0, p0, Lcom/android/systemui/animation/back/OnBackAnimationCallbackExtensionKt$onBackAnimationCallbackFrom$4;->$onBackStarted:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
