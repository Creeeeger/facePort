.class public final synthetic Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->$r8$lambda$NsaaL-Vh1HXHoAmkymvczD_hKoU(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
