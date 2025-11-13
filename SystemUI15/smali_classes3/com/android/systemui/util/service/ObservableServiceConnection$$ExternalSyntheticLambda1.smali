.class public final synthetic Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

.field public final synthetic f$1:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/ObservableServiceConnection;Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iput-object p2, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    invoke-static {v0, p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$Q3vlTXlmiJFXtw63LlvPHwh3RwE(Lcom/android/systemui/util/service/ObservableServiceConnection;Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    invoke-static {v0, p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$GeS1o_h66IkDF7_j_bFOvbV1lE0(Lcom/android/systemui/util/service/ObservableServiceConnection;Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
