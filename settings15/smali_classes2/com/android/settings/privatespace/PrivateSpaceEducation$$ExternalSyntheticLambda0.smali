.class public final synthetic Lcom/android/settings/privatespace/PrivateSpaceEducation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/privatespace/PrivateSpaceEducation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/PrivateSpaceEducation;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/privatespace/PrivateSpaceEducation$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceEducation$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateSpaceEducation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/privatespace/PrivateSpaceEducation$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceEducation$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/PrivateSpaceEducation;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x75c

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string p1, "PrivateSpaceEducation"

    const-string v0, "Starting private space setup"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0a007f

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x75d

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string p0, "PrivateSpaceEducation"

    const-string v0, "private space setup cancelled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
