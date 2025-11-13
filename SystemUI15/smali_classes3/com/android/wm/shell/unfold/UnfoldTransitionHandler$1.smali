.class public final Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mProgress:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget p0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$1;->mProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput p2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$1;->mProgress:F

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->onStateChangeProgress(F)V

    return-void
.end method
