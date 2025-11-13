.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Z)Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;)V

    const/4 p0, 0x0

    const-string v2, "ignore_repeated_touches"

    invoke-static {p1, v2, v1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createExclusiveDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return v0
.end method
