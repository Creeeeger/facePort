.class public final synthetic Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$0:Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    iput p2, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$2:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$0:Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    iget v1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$2:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->$r8$lambda$tEWK9zMQtUtctOFZtwxdalZwshA(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V

    return-void
.end method
