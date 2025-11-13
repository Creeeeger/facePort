.class public final synthetic Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getChooseLockHintSettingsIntent(Landroidx/fragment/app/FragmentActivity;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity$PreviousPasswordDescriptionFragment;->mCurrentPW:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "secret_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "save_previous_credential_description_show_count"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x1130

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "LSE2041"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
