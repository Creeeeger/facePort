.class final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "EyeComfortSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field private final NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

.field private final NIGHT_DIM_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroid/os/Handler;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    .line 739
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "blue_light_filter"

    .line 724
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_opacity"

    .line 726
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_scheduled"

    .line 728
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_type"

    .line 730
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_adaptive_mode"

    .line 732
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    const-string p1, "high_contrast"

    .line 734
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_night_dim"

    .line 736
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 744
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 745
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange BLUE_LIGHT_FILTER_URI isEnabled() : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misEnabled(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misEnabled(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 747
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misEnabled(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdateEnableStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Z)V

    .line 748
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdateDescriptionPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    goto/16 :goto_5

    .line 749
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 750
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmColorSeekBarPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$900(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x5

    const-string v0, "blue_light_filter_opacity"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    goto/16 :goto_5

    .line 751
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "blue_light_filter_adaptive_mode"

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 752
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChange BLUE_LIGHT_FILTER_SCHEDULED_URI"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1000(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    .line 754
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misAdaptiveModeAvailable(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 755
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1100(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 757
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1200(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChange BLUE_LIGHT_FILTER_ADAPTIVE_MODE: set OFF"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdatePreferenceStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    goto/16 :goto_5

    .line 762
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 763
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChange BLUE_LIGHT_FILTER_TYPE_URI"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1300(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_type"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 765
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misAdaptiveModeAvailable(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 766
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdateCustomSettingPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    goto/16 :goto_5

    .line 768
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 769
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChange BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmAdaptivePreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 771
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1400(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v3

    .line 772
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmAdaptivePreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 773
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1500(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 775
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1600(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 776
    invoke-static {}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChange BLUE_LIGHT_FILTER_SCHEDULED :set OFF "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$mupdatePreferenceStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    goto :goto_5

    .line 780
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 781
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "high_contrast"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_d

    .line 782
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_5

    .line 784
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 785
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_night_dim"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    .line 787
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmNightDimPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->setChecked(Z)V

    :cond_d
    :goto_5
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$1700(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 794
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 795
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 796
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 797
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 798
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$misAdaptiveModeAvailable(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 804
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
