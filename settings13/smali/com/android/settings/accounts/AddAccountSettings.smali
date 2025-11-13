.class public Lcom/android/settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private mAddAccountCalled:Z

.field private mAddAccountDisplayed:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    .line 96
    new-instance v1, Lcom/android/settings/accounts/AddAccountSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings/accounts/AddAccountSettings;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 150
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 9

    .line 274
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "SHOULDN\'T RESOLVE!"

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 289
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v1, "pendingIntent"

    .line 291
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "hasMultipleUsers"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method private requestChooseAccount()V
    .locals 6

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_types"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$ChooseAccountActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 235
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 239
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    .line 224
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 226
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    const-string p1, "selected_account"

    .line 231
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AddAccountSettings"

    if-eqz p1, :cond_0

    const-string v1, "AddAccountCalled"

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    const-string v1, "key_account_displayed"

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    const/4 p1, 0x2

    .line 162
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "restored"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p1, "user"

    .line 165
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 166
    invoke-static {v1, p1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    const-string v2, "no_modify_accounts"

    .line 168
    invoke-virtual {p1, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_cannot_add_accounts_message:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 180
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 199
    :cond_4
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x3

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 202
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 203
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    :cond_5
    :goto_0
    return-void

    .line 182
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot keep this activity, mAddAccountDisplayed = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    const-string v1, "AddAccountCalled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    iget-boolean p0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountDisplayed:Z

    const-string v0, "key_account_displayed"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "AddAccountSettings"

    const/4 p1, 0x2

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "saved"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
