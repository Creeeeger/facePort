.class Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController$UpdateStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSimToolkitPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController$UpdateStateReceiver;->this$0:Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController$UpdateStateReceiver;->this$0:Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 163
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string p2, "com.android.stk"

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.android.stk2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController$UpdateStateReceiver;->this$0:Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimToolkitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_3
    :goto_1
    return-void
.end method
