.class public Lcom/android/settings/applications/appcompat/RadioWithImagePreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;->mListener:Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;

    const p1, 0x7f0d0546

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d05c1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;->mListener:Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;

    const p1, 0x7f0d0546

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d05c1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0f87

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final onClick()V
    .locals 22

    const-string v1, "16_9_pref"

    const-string v3, "4_3_pref"

    const-string v5, "app_default_pref"

    const-string v7, "display_size_pref"

    const-string v9, "fullscreen_pref"

    const-string v11, "half_screen_pref"

    const-string v12, "3_2_pref"

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;->mListener:Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;

    const-string v2, "UserAspectRatioDetails"

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0, v15}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getSelectedUserMinAspectRatio(Ljava/lang/String;)I

    move-result v4

    :try_start_0
    invoke-virtual {v0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    move-result-object v6

    iget-object v8, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    iget-object v6, v6, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8, v10, v4}, Landroid/content/pm/IPackageManager;->setUserMinAspectRatio(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v4, v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v4, v13

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v4, v14

    :goto_1
    packed-switch v4, :pswitch_data_0

    move/from16 v18, v14

    goto :goto_3

    :pswitch_0
    const/16 v4, 0x754

    :goto_2
    move/from16 v18, v4

    goto :goto_3

    :pswitch_1
    const/16 v4, 0x752

    goto :goto_2

    :pswitch_2
    const/16 v4, 0x74c

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x758

    goto :goto_2

    :pswitch_4
    const/16 v4, 0x74e

    goto :goto_2

    :pswitch_5
    const/16 v4, 0x750

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x756

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    const/16 v19, 0x806

    move-object/from16 v16, v6

    move/from16 v17, v8

    move/from16 v20, v10

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_4

    :sswitch_7
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v13, 0x6

    goto :goto_4

    :sswitch_8
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v13, 0x5

    goto :goto_4

    :sswitch_9
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v13, 0x4

    goto :goto_4

    :sswitch_a
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v13, 0x3

    goto :goto_4

    :sswitch_b
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v13, 0x2

    goto :goto_4

    :sswitch_c
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v13, 0x1

    goto :goto_4

    :sswitch_d
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    move v13, v14

    :goto_4
    packed-switch v13, :pswitch_data_1

    :goto_5
    move/from16 v18, v14

    goto :goto_6

    :pswitch_7
    const/16 v14, 0x753

    goto :goto_5

    :pswitch_8
    const/16 v14, 0x751

    goto :goto_5

    :pswitch_9
    const/16 v14, 0x74b

    goto :goto_5

    :pswitch_a
    const/16 v14, 0x757

    goto :goto_5

    :pswitch_b
    const/16 v14, 0x74d

    goto :goto_5

    :pswitch_c
    const/16 v14, 0x74f

    goto :goto_5

    :pswitch_d
    const/16 v14, 0x755

    goto :goto_5

    :goto_6
    iget-object v1, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    const/16 v19, 0x806

    move-object/from16 v16, v6

    move/from16 v17, v8

    move/from16 v20, v3

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iput-object v15, v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mAspectRatioPreferences:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Killing application process "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to stop application "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    const-string v0, "Unable to set user min aspect ratio"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x51f26864 -> :sswitch_6
        -0x267b97f6 -> :sswitch_5
        -0x1c9103d9 -> :sswitch_4
        -0x1bae239c -> :sswitch_3
        -0xad88d41 -> :sswitch_2
        0x17a39d1a -> :sswitch_1
        0x52bc49c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x51f26864 -> :sswitch_d
        -0x267b97f6 -> :sswitch_c
        -0x1c9103d9 -> :sswitch_b
        -0x1bae239c -> :sswitch_a
        -0xad88d41 -> :sswitch_9
        0x17a39d1a -> :sswitch_8
        0x52bc49c3 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
