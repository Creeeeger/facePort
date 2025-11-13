.class public final synthetic Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    iput p2, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
