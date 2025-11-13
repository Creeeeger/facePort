.class public final Lcom/android/settings/network/apn/ApnEditor$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    sget-boolean v0, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
