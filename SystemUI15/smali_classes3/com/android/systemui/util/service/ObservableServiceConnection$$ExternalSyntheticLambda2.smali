.class public final synthetic Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/ObservableServiceConnection;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    check-cast p1, Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$kkEx5StrU60upZ5FEj88cnK5icw(Lcom/android/systemui/util/service/ObservableServiceConnection;Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$8bzMI8JUS8y20Tlke5e95GMPraE(Lcom/android/systemui/util/service/ObservableServiceConnection;Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
