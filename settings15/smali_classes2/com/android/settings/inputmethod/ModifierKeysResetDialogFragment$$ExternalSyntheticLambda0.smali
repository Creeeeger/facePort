.class public final synthetic Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/hardware/input/InputManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment;Landroidx/fragment/app/FragmentActivity;Landroid/hardware/input/InputManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/input/InputManager;

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysResetDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x735

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->clearAllModifierKeyRemappings()V

    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
