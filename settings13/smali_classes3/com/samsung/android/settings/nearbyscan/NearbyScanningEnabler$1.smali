.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;
.super Landroid/database/ContentObserver;
.source "NearbyScanningEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNearbyScanningObserver DB value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyScanningEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmNearbyScanningSettingsSwitch(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmNearbyScanningSettingsSwitch(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p0

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmNearbyScanningSwitchBar(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmNearbyScanningSwitchBar(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method
