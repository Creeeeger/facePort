.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    return-void
.end method
