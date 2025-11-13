.class public final synthetic Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    iput p2, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$2:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    iget v1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$2:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->$r8$lambda$cqQt7bJjKLzKjwWlNJr0QIrJIZ8(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V

    return-void
.end method
