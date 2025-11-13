.class public final Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;)V

    return-void
.end method
