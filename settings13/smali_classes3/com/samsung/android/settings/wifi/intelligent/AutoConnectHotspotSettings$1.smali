.class Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;
.super Ljava/lang/Object;
.source "AutoConnectHotspotSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->initializedDisconnectWhenNotInUseSwitchPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->-$$Nest$misDisconnectWhenNotInUSeSwitchOn(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)Z

    move-result p1

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->-$$Nest$msetCheckedToDisconnectWhenNotInUseSwitch(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;Z)V

    return v0
.end method
