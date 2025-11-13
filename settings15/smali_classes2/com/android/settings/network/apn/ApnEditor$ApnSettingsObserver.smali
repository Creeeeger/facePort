.class public final Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-boolean p2, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    :cond_0
    return-void
.end method
