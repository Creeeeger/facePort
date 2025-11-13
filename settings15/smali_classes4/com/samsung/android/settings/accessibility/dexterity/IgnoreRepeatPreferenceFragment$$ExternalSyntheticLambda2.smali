.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    return-void
.end method
