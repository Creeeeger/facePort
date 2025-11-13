.class public final synthetic Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->$r8$lambda$GKhGRnzmENIfelIMNfVjn_-qtDE(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->$r8$lambda$gt0wtRC6mV6EfOUHkizySfuYRXI(Lcom/android/systemui/bixby2/controller/MWBixbyController;[I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
