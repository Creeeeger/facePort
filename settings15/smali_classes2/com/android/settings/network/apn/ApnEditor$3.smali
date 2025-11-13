.class public final Lcom/android/settings/network/apn/ApnEditor$3;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$3;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$3;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
