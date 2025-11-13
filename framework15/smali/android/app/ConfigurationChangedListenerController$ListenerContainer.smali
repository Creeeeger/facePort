.class final Landroid/app/ConfigurationChangedListenerController$ListenerContainer;
.super Ljava/lang/Object;
.source "ConfigurationChangedListenerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ConfigurationChangedListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerContainer"
.end annotation


# instance fields
.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$A4sLxIk3QWUKSXaStstCDhi9Sn0(Landroid/app/ConfigurationChangedListenerController$ListenerContainer;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->lambda$accept$0(Landroid/os/IBinder;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method private synthetic blacklist lambda$accept$0(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer$$ExternalSyntheticLambda0;-><init>(Landroid/app/ConfigurationChangedListenerController$ListenerContainer;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist isMatch(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
