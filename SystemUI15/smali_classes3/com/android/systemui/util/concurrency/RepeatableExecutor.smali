.class public interface abstract Lcom/android/systemui/util/concurrency/RepeatableExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public executeRepeatedly(Ljava/lang/Runnable;JJ)Ljava/lang/Runnable;
    .locals 7

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public abstract executeRepeatedly(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;
.end method
