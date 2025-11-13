.class public final synthetic Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/util/concurrent/Executor;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$2:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda2;->f$2:Ljavax/inject/Provider;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
