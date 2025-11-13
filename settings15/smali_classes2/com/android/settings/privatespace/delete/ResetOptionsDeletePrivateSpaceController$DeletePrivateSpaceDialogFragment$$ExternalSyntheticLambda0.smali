.class public final synthetic Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;

    iput-object p2, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p2, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;

    iget-object p0, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x81e

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;

    iget-object p0, p0, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x81d

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->deletePrivateSpace()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
