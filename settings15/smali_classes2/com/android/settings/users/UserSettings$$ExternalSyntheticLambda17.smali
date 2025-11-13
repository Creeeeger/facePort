.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$3:Landroid/content/res/Resources;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$1:Landroid/content/pm/UserInfo;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$2:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$3:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$1:Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$3:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;->f$4:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    iput-object v5, v0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, v0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1402a5

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    iget-object p0, v0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;

    invoke-direct {v6, v0, v2, v3, v1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/pm/UserInfo;)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v5, v0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, v0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;ZLandroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
