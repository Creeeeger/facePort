.class public final synthetic Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-static {v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->$r8$lambda$1HoLBFl9LDx2gBAFnYkWZwn0v44(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-void
.end method
