.class public final Lcom/android/keyguard/SecRotationWatcher$2;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecRotationWatcher;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecRotationWatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$2;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher$2;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    iput p1, p0, Lcom/android/keyguard/SecRotationWatcher;->mCurrentRotation:I

    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
