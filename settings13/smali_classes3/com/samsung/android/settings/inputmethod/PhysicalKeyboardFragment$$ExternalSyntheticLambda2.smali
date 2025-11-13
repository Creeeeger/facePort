.class public final synthetic Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->$r8$lambda$PG0RIk9k2KMHwZuCkFmbwQnaaEI(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
