.class public final synthetic Lcom/android/settings/accounts/AccountPreferenceBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accounts/AccountSyncSettings;

    sget p1, Lcom/android/settings/accounts/AccountSyncSettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/accounts/AccountPreferenceBase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
