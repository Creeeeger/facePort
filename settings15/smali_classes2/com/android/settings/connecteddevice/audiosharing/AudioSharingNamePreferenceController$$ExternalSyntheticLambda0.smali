.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->$r8$lambda$Lk7MKatH7Qxpy1fjcqLvVj-Xx-M(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->$r8$lambda$kKryw65uU70PrwivW7cy2cbz4h4(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
