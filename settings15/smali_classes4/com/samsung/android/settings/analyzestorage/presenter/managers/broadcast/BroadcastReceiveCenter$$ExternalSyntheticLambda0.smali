.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

.field public final synthetic f$1:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
