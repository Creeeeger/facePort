.class public final Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final capacity:I

.field public final head:[Ljava/lang/Object;

.field public offset:I

.field public tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/Observer;)Z
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    :goto_1
    iget v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    sget-object v2, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_2

    :cond_1
    instance-of v2, v3, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v2, :cond_2

    check-cast v3, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object p0, v3, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_2
    instance-of v2, v3, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    if-eqz v2, :cond_3

    check-cast v3, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    iget-object v2, v3, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return v1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object v0, v2, v1

    iput-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    return-void
.end method
