.class public final synthetic Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

.field public final synthetic f$1:Lcom/android/systemui/keyguard/ScreenLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method
