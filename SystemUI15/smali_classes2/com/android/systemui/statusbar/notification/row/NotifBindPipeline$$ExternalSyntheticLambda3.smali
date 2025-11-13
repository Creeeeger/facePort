.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
