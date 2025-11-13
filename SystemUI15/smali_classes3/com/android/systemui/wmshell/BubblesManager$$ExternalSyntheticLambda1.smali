.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
