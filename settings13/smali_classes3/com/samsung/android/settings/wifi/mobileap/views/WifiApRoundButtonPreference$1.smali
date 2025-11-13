.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;
.super Ljava/lang/Object;
.source "WifiApRoundButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Button Clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->-$$Nest$fgetmOnPreferenceClickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->-$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    return-void
.end method
