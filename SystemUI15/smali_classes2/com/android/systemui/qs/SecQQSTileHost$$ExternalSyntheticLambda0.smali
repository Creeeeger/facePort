.class public final synthetic Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQQSTileHost;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQQSTileHost;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQQSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQQSTileHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQQSTileHost;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
