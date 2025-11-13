.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda1;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mManager:Lcom/android/systemui/touch/TouchInsetManager;

    iget-object v2, v1, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mManager:Lcom/android/systemui/touch/TouchInsetManager;

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
