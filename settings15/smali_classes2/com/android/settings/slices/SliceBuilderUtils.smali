.class public abstract Lcom/android/settings/slices/SliceBuilderUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static buildIntentSlice(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 7

    invoke-static {p0, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object p1

    const v3, 0x1010435

    invoke-static {p0, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p2}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    iput-object v6, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v2, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-static {v0, v1, v2, v6}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSettingsIntelligence(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Landroidx/slice/builders/ListBuilder;

    iget-object p2, p2, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-direct {p1, p0, p2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, p1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v3}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object p0, p1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v5}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    iget-object p0, p1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v4}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public static buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Invalid menu key res from: "

    const-string v3, "SliceBuilder"

    invoke-static {v2, p5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v3, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p2, v3, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p3, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput-object p5, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    iput p0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "is_from_slice"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating slice for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    const-string v2, "SliceBuilder"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    const/4 v6, 0x5

    const v7, 0x1010435

    iget-object v8, p1, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    if-ne v1, v6, :cond_3

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p1, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f140d1b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p0, v5, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v4, v3, v5, v8}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v8, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v5, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v6, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v4, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSettingsIntelligence(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-direct {v2, p0, p1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object p0, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v6}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    iget-object p0, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v0}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v1, p1, Lcom/android/settings/slices/SliceData;->mUserRestriction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {p0, v6, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildIntentSlice(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_4
    iget v1, p1, Lcom/android/settings/slices/SliceData;->mSliceType:I

    if-eqz v1, :cond_f

    const/4 v6, 0x1

    if-eq v1, v6, :cond_d

    const/4 v9, 0x2

    if-ne v1, v9, :cond_c

    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/SliderPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v11

    if-gt v10, v11, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid sliderController: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    const-string v2, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-static {p0, v2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v4, v5, v8}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v10

    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v11

    if-le v10, v11, :cond_7

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v10

    :cond_7
    new-instance v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v11}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    iput-object v8, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v3, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v3

    iput v3, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    invoke-virtual {v1}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v3

    iput v3, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    iput-boolean v6, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    iput v10, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    iput-object v2, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    iget v2, p1, Lcom/android/settings/slices/SliceData;->mIconResource:I

    if-eqz v2, :cond_8

    iput-object v4, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, -0x1

    :cond_8
    invoke-static {p0}, Lcom/android/settings/Utils;->isSettingsIntelligence(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v0, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    :cond_9
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliceEndItem(Landroid/content/Context;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v1, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mHasDefaultToggle:Z

    if-nez v1, :cond_a

    iget-object v1, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    iput-boolean v0, v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mHasDefaultToggle:Z

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_2
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-direct {v0, p0, p1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v7}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v11}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v5}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    :goto_3
    return-object v3

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Slice type passed was invalid: "

    invoke-static {v1, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    check-cast v0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v0

    const-string v7, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-static {p0, v7, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v9, Landroidx/slice/builders/SliceAction;

    invoke-direct {v9, v7, v3, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v0

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v8, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v5, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-static {v1, v2, v5, v8}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    iput-object v1, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isSettingsIntelligence(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_e
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-direct {v1, p0, p1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v6}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object p0, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v3}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    iget-object p0, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v0}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildIntentSlice(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public static buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/slices/SliceBuilderUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.slice.extra.key"

    iget-object p2, p2, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0xa000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;
    .locals 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    iget v3, p1, Lcom/android/settings/slices/SliceData;->mHighlightMenuRes:I

    iget-object v5, p1, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p1
.end method

.method public static getPathData(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "intent"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4

    iget v0, p1, Lcom/android/settings/slices/SliceData;->mIconResource:I

    const v1, 0x7f0805ce

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Falling back to settings icon because there is an error getting slice icon "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SliceBuilder"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;
    .locals 1

    invoke-interface {p1}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p2, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p2, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f142e0a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f142e0e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
