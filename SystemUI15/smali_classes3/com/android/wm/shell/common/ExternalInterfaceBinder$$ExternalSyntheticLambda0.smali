.class public final synthetic Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/wm/shell/common/RemoteCallable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
