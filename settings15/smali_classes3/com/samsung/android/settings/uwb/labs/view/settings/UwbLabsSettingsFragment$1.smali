.class public final Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1422e0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/settings/UwbLabsSettingsFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
