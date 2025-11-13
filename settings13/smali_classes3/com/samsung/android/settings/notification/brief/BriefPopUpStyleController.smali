.class public Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BriefPopUpStyleController.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "edge_lighting"

.field private static final DB_REMOVE_ANIMATIONS:Ljava/lang/String; = "remove_animations"

.field public static final EDGE_LIGHTING_STYLE_BASIC:Ljava/lang/String; = "preload/basic"

.field public static final EDGE_LIGHTING_STYLE_BUBBLE:Ljava/lang/String; = "preload/bubble"

.field public static final EDGE_LIGHTING_STYLE_ECHO:Ljava/lang/String; = "preload/echo"

.field public static final EDGE_LIGHTING_STYLE_ECLIPSE:Ljava/lang/String; = "preload/eclipse"

.field public static final EDGE_LIGHTING_STYLE_FIREWORKS:Ljava/lang/String; = "preload/fireworks"

.field public static final EDGE_LIGHTING_STYLE_GLOW:Ljava/lang/String; = "preload/glow"

.field public static final EDGE_LIGHTING_STYLE_GRADATION:Ljava/lang/String; = "preload/gradation"

.field public static final EDGE_LIGHTING_STYLE_HEART:Ljava/lang/String; = "preload/heart"

.field public static final EDGE_LIGHTING_STYLE_NO_FRAME:Ljava/lang/String; = "preload/noframe"

.field public static final EDGE_LIGHTING_STYLE_REFLECTION:Ljava/lang/String; = "preload/reflection"

.field public static final EDGE_LIGHTING_STYLE_SPOTLIGHT:Ljava/lang/String; = "preload/spotlight"

.field public static final EDGE_LIGHTING_STYLE_WAVE:Ljava/lang/String; = "preload/wave"

.field private static final KEY_BRIEF_POPUP_STYLE:Ljava/lang/String; = "brief_popup_style_settings"

.field private static final STYLE_DB:Ljava/lang/String; = "edge_lighting_style_type_str"

.field private static final STYLE_DB_OLD:Ljava/lang/String; = "edge_lighting_style_type"

.field private static final TAG:Ljava/lang/String; = "BriefPopUpStyleController"


# instance fields
.field mParentScreen:Landroidx/preference/PreferenceScreen;

.field private mPreference:Landroidx/preference/SecPreference;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "brief_popup_style_settings"

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreference:Landroidx/preference/SecPreference;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBriefPopupStyleType()Ljava/lang/String;
    .locals 7

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remove_animations"

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "preload/noframe"

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "edge_lighting_style_type"

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 110
    invoke-static {p0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const-string v6, "edge_lighting_style_type_str"

    if-ltz v5, :cond_9

    .line 112
    invoke-static {p0, v1, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v5, :cond_8

    if-eq v5, v2, :cond_6

    const/4 v1, 0x2

    if-eq v5, v1, :cond_4

    const/4 v1, 0x3

    if-eq v5, v1, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->isSupportFrameEffect()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "preload/reflection"

    .line 138
    invoke-static {p0, v6, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {p0, v6, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 128
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->isSupportFrameEffect()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "preload/glow"

    .line 129
    invoke-static {p0, v6, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 132
    :cond_5
    invoke-static {p0, v6, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 119
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->isSupportFrameEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "preload/gradation"

    .line 120
    invoke-static {p0, v6, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 123
    :cond_7
    invoke-static {p0, v6, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 115
    :cond_8
    invoke-static {p0, v6, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 147
    :cond_9
    :goto_0
    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStyleSummaryName()Ljava/lang/String;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->getBriefPopupStyleType()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "preload/gradation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "preload/wave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "preload/glow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "preload/echo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "preload/heart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "preload/basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "preload/reflection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "preload/bubble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "preload/eclipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "preload/noframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "preload/fireworks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "preload/spotlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_noframe_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 165
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_multicolor_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_wave_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 168
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_glow_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 189
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_echo_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 180
    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_heart_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 162
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_basic_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 171
    :pswitch_6
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_glitter_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 177
    :pswitch_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_bubble_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 186
    :pswitch_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_eclipse_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 159
    :pswitch_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_noframe_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 183
    :pswitch_a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_fireworks_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 192
    :pswitch_b
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brief_popup_style_spotlight_effect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x647c7732 -> :sswitch_b
        -0x3d666d7a -> :sswitch_a
        -0x286061ba -> :sswitch_9
        -0x18a1efbf -> :sswitch_8
        -0xd3304ae -> :sswitch_7
        0x27565ff1 -> :sswitch_6
        0x39589ca8 -> :sswitch_5
        0x39aeb8c0 -> :sswitch_4
        0x5cb1aa6b -> :sswitch_3
        0x5cb2b5d3 -> :sswitch_2
        0x5cb9d33f -> :sswitch_1
        0x7795ece1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->getStyleSummaryName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.systemui"

    const-string v1, "com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity"

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BriefPopUpStyleController"

    const-string v0, "Activity Not Found"

    .line 78
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateVisible()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remove_animations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreference:Landroidx/preference/SecPreference;

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isEdgeLightingDefaultOff()Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "edge_lighting"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v2, v1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
