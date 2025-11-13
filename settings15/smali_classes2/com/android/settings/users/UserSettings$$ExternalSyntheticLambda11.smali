.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/UserInfo;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p2, v1, :cond_0

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, p2, v2}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/users/UserSettings;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
