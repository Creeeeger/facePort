.class public final Landroidx/room/MultiInstanceInvalidationClient$callback$1;
.super Landroidx/room/IMultiInstanceInvalidationCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInvalidation([Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$callback$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Landroidx/room/MultiInstanceInvalidationClient$callback$1$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Landroidx/room/MultiInstanceInvalidationClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
