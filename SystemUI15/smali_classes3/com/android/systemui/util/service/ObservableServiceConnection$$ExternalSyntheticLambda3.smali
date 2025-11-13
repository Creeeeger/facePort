.class public final synthetic Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/ObservableServiceConnection;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$Adjz1vxnU_av7jpmeFW3vzL2h_s(Lcom/android/systemui/util/service/ObservableServiceConnection;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$i30vLACw7oHWTbD9qZi6HQhlrX0(Lcom/android/systemui/util/service/ObservableServiceConnection;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$L_z9azHO6XT9QhgiYfAAUFn4RBk(Lcom/android/systemui/util/service/ObservableServiceConnection;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$TwQbs6RS0xXm8q1lVDAbhR9-4NY(Lcom/android/systemui/util/service/ObservableServiceConnection;)V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$8ttGEDNkWMbq-s7TjvhjlToQ-mI(Lcom/android/systemui/util/service/ObservableServiceConnection;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
