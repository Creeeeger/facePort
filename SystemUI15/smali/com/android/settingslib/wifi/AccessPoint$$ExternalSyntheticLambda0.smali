.class public final synthetic Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
