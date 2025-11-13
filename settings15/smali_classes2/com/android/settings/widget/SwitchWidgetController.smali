.class public abstract Lcom/android/settings/widget/SwitchWidgetController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# virtual methods
.method public abstract isChecked()Z
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public setupView()V
    .locals 0

    return-void
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method

.method public teardownView()V
    .locals 0

    return-void
.end method
