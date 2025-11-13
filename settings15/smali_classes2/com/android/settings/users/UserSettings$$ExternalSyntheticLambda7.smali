.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$4:Landroid/content/res/Resources;

.field public final synthetic f$5:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$4:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/users/UserSettings;

    iget v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$4:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    sget-object p0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 p0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v0, p0, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v0, "android.os.usertype.full.SECONDARY"

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v0, v6}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v6

    :goto_0
    iget-boolean p0, v1, Lcom/android/settings/users/UserSettings;->mPendingUserIsAdmin:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->setUserAdmin(I)V

    :cond_1
    :goto_1
    move-object v2, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v6

    goto :goto_1

    :goto_2
    new-instance p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda17;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
