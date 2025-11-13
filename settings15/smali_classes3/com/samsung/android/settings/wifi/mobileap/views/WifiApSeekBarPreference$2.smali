.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setProgress(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setSeekBarThumbTextView()V

    return-void
.end method
