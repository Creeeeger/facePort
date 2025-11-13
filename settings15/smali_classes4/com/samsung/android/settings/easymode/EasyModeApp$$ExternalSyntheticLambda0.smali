.class public final synthetic Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    const-string v1, "1"

    iget-object v0, v0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    iget-object v2, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "display_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "init_easy_mode_enable_values"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Exception caught while closing cursor"

    const-string v6, "EasyModeUtils"

    const-string/jumbo v7, "use_one_hand_operation"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    iget-object v3, v3, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v3, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v8, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "NAME"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "VALUE"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    move v8, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v3

    goto/16 :goto_5

    :cond_1
    if-eqz v3, :cond_2

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move v8, v4

    move-object v3, v15

    :catch_2
    :try_start_3
    const-string v7, "Exception caught while fetching value of use_one_hand_operation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v15, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_3
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1401e0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f1401df

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iget-object v3, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "0"

    :goto_3
    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->putValueToKeyboard(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v14}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    :goto_4
    return v4

    :goto_5
    if-eqz v15, :cond_6

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    throw v0

    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x120c

    const/16 v3, 0x120e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/16 v3, 0x1210

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "EasyMode Switch is clicked to -> "

    const-string v5, "EasyModeApp"

    invoke-static {v4, v5, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v6, v4, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    if-eqz v3, :cond_7

    iget-object v8, v4, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f140d97

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    iget-object v8, v4, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f140d95

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_5
    iget-object v4, v4, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    const-string v4, "EasyModeUtils"

    const-string v6, "Exception caught as Accessibility is off"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_8
    iget-object v4, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->showPinWindowToast(Landroid/content/Context;)V

    goto/16 :goto_d

    :cond_9
    const-string v4, "STANDARD_BOLD_FONT"

    const-string v6, "STANDARD_FONT_SIZE"

    const-string v8, "FontSettingsInEasyMode"

    const-string v9, "bold_text"

    const-string v11, "font_size"

    const-string/jumbo v12, "prev_high_contrast_keyboard_value"

    const-string/jumbo v13, "prev_touch_and_hold_value"

    const-string v14, "display_pref"

    const-string v15, "0"

    const/16 v7, 0x1f4

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v10, "long_press_timeout"

    invoke-static {v3, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v7}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result v7

    const-string v10, "1"

    if-eqz v7, :cond_a

    move-object v15, v10

    :cond_a
    iget-object v7, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7, v14, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x5dc

    iput v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    iput-object v10, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updatePreferenceState(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v7, v3, :cond_b

    iget-object v4, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f140d8e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f141807

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const-string v3, "can\'t enable easy mode due to mobile keyboard"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_b
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v5, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v5, v11, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sget v10, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v12, 0x1afa4

    if-lt v10, v12, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x5

    goto :goto_9

    :cond_c
    const/4 v10, 0x3

    :goto_9
    iget-object v12, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v12

    const-string/jumbo v13, "setEasyFont previousIndex : "

    const-string v14, ", previousBoldFont : "

    const-string v15, ", easyModeFontIndex : "

    invoke-static {v13, v14, v5, v7, v15}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", easyModeFontScale : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/16 v10, 0x12c

    invoke-static {v8, v10}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    iget-object v8, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v3, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    :goto_a
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_d
    const/16 v10, 0x12c

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3, v14, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v13, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    invoke-interface {v3, v12, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updatePreferenceState(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v5, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-gez v5, :cond_e

    move v5, v7

    :cond_e
    iget-object v6, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v6

    const-string/jumbo v7, "setStandardFont standardFontIndex : "

    const-string v12, ", standardBoldFont : "

    const-string v13, ", standardFontScale : "

    invoke-static {v7, v12, v5, v4, v13}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v11, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v9, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f

    move v7, v10

    goto :goto_b

    :cond_f
    move v7, v2

    :goto_b
    invoke-static {v5, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    iget-object v4, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v3, v3, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    :goto_c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda3;-><init>(Landroidx/preference/Preference;)V

    const-wide/16 v5, 0x9c4

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v4

    :goto_d
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
