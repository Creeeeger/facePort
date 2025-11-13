.class public final Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/LogPersistPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;->this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "CURRENT_LOGD_VALUE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;->this$0:Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->-$$Nest$monLogdSizeSettingUpdate(Lcom/android/settings/development/LogPersistPreferenceController;Ljava/lang/String;)V

    return-void
.end method
