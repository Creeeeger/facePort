.class public final Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 4

    sget v0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-le v1, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method
