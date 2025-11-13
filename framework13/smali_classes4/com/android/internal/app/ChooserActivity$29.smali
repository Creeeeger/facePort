.class Lcom/android/internal/app/ChooserActivity$29;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semSetUpSettingsButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 12038
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$29;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 12041
    new-instance v0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;

    invoke-direct {v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;-><init>()V

    .line 12042
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$29;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 12043
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 12044
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const v3, 0x102054a

    const-string/jumbo v4, "settingAppFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 12045
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 12046
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$29;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity;->semSetRLDVisibility(I)V

    .line 12047
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 12048
    return-void
.end method
