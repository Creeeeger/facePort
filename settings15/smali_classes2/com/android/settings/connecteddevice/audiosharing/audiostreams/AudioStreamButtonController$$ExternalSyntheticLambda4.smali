.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

.field public final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$1:Landroid/view/View$OnClickListener;

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->$r8$lambda$Mz4PvmtyGL3yDLtf4ZUcEn8bTGs(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda4;->f$1:Landroid/view/View$OnClickListener;

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->$r8$lambda$VrvgkauYaeU8S5I2VaTsAkXnQUE(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$$ExternalSyntheticLambda3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
