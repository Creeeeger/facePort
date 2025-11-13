.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;
.super Ljava/lang/Object;
.source "WifiApSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Secondary icon clicked."

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$fgetmOnPreferenceItemsCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$fgetmOnPreferenceItemsCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
