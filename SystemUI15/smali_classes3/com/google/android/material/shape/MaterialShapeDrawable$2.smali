.class public final Lcom/google/android/material/shape/MaterialShapeDrawable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$strokeInsetLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->val$strokeInsetLength:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->val$strokeInsetLength:F

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/shape/AdjustedCornerSize;-><init>(FLcom/google/android/material/shape/CornerSize;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
