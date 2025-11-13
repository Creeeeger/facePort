.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->setEditTextEnabled(Z)V

    return-void
.end method
