.class public final synthetic Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/ObservableServiceConnection;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iput-object p2, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$Bpzo8OlLJ9YYYi7KsX1W1_lfohY(Lcom/android/systemui/util/service/ObservableServiceConnection;Landroid/os/IBinder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/IndentingPrintWriter;

    invoke-static {v0, p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$HRpgsN9syzqaIK57dIW6Jz9BQ0s(Lcom/android/systemui/util/service/ObservableServiceConnection;Landroid/util/IndentingPrintWriter;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/IndentingPrintWriter;

    invoke-static {v0, p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$2jLqSN1QLHhR1CmzmPqFsFStbNQ(Lcom/android/systemui/util/service/ObservableServiceConnection;Landroid/util/IndentingPrintWriter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
