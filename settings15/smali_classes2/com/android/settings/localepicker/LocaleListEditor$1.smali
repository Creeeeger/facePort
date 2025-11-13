.class public final Lcom/android/settings/localepicker/LocaleListEditor$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    iget-object v1, v0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v2, v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->handleOnBackPressed()Z

    return-void
.end method
