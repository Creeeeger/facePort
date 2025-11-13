.class public final Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field public final onDetected:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;->onDetected:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final onPatternCleared()V
    .locals 0

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/OnPatternDetectedListener;->onDetected:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPatternStart()V
    .locals 0

    return-void
.end method
