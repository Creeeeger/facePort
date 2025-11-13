.class final Lcom/android/systemui/util/NamedListenerSet$remove$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate;"
    }
.end annotation


# instance fields
.field final synthetic $element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/NamedListenerSet$remove$1;->$element:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/systemui/util/NamedListenerSet$NamedListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/NamedListenerSet$NamedListener;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->getListener()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/NamedListenerSet$remove$1;->$element:Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/util/NamedListenerSet$NamedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/NamedListenerSet$remove$1;->test(Lcom/android/systemui/util/NamedListenerSet$NamedListener;)Z

    move-result p0

    return p0
.end method
