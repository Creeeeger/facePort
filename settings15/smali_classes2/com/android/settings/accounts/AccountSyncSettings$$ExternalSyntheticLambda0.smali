.class public final synthetic Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accounts/AccountSyncSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settings/accounts/SyncStateSwitchPreference;

.field public final synthetic f$3:Landroid/accounts/Account;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;Ljava/lang/String;Lcom/android/settings/accounts/SyncStateSwitchPreference;Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/accounts/SyncStateSwitchPreference;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$3:Landroid/accounts/Account;

    iput p5, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$3:Landroid/accounts/Account;

    sget v0, Lcom/android/settings/accounts/AccountSyncSettings;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/accounts/SyncStateSwitchPreference;

    iget-object v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/accounts/AccountSyncSettings$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {p1, v1, p0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    iget-boolean v2, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    move p0, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, v1, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, v4, :cond_1

    if-eqz p2, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1, v1, p2, p0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    invoke-static {p0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez p2, :cond_1

    :cond_5
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :goto_1
    return p0
.end method
