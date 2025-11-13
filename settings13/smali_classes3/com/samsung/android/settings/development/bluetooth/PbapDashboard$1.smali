.class Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;
.super Ljava/lang/Object;
.source "PbapDashboard.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;->this$0:Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;->this$0:Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;

    invoke-static {p1}, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 55
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;->this$0:Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;

    invoke-static {p0}, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "bluetooth_restart"

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "key_bluetooth_restart"

    .line 61
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v0
.end method
