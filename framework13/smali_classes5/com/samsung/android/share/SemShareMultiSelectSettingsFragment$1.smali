.class Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;
.super Ljava/lang/Object;
.source "SemShareMultiSelectSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;

.field final synthetic blacklist val$activityContext:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;

    .line 285
    iput-object p1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;->this$0:Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;

    iput-object p2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;->val$activityContext:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;->val$activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;->val$activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 290
    return-void
.end method
