.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;
.super Ljava/lang/Object;
.source "WifiApRoundButtonPreferenceSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Button Clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->-$$Nest$fgetmOnPreferenceClickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->-$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    return-void
.end method
