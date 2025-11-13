.class public final Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mManager:Lcom/android/systemui/touch/TouchInsetManager;

.field public final mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

.field public final mTrackedViews:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mManager:Lcom/android/systemui/touch/TouchInsetManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final updateTouchRegions()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
