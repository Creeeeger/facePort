.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;
.super Ljava/lang/Object;
.source "WifiApSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$fgetmOnPreferenceChangeListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$fgetmOnPreferenceChangeListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$fgetthisPreference(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->-$$Nest$msetSeekBarThumbTextView(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    return-void
.end method
