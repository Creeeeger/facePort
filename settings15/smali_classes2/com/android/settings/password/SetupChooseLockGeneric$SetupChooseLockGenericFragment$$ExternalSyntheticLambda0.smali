.class public final synthetic Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    sget p1, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isSetupFlow"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
