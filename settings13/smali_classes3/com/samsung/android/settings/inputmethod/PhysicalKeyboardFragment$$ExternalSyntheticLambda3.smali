.class public final synthetic Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

.field public final synthetic f$2:Landroid/view/inputmethod/InputMethodInfo;

.field public final synthetic f$3:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$2:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$3:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$2:Landroid/view/inputmethod/InputMethodInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;->f$3:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->$r8$lambda$Plo4qEiUyi1pI6jFTUPNoscGocI(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
