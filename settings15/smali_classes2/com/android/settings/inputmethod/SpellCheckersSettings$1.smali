.class public final Lcom/android/settings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field public final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "selected_spell_checker_subtype"

    iget v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object p0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    sget p2, Lcom/android/settings/inputmethod/SpellCheckersSettings;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "selected_spell_checker"

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->$r8$clinit:I

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v0

    :goto_0
    iget-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    sget v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;->$r8$clinit:I

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
