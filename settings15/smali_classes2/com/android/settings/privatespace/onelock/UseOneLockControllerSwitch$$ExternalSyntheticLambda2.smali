.class public final synthetic Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
