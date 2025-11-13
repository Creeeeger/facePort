.class public final Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final mIterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/InputEvent;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputEvent;

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputEvent;

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final remove()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/InputEvent;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
