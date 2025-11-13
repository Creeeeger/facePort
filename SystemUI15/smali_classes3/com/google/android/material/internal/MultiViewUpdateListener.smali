.class public final Lcom/google/android/material/internal/MultiViewUpdateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

.field public final views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    iput-object p2, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    return-void
.end method

.method public static varargs translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 3

    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    invoke-interface {v4, p1, v3}, Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;->onAnimationUpdate(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
