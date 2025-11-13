.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getFunctionKeyAction(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    iget v2, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->pressType:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "function_key_config_doublepress_selected_actions"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$1;

    invoke-direct {v3}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->componentInfo:Landroid/content/pm/ComponentInfo;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->loadDynamicFunctionKeyActions(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getFunctionKeyItems(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "com.samsung.android.settings.usefulfeature.functionkey.FunctionKeySettingsProvider"

    const-string v8, "key"

    const-string v9, "getString(...)"

    const-string v10, "context"

    const-string v11, "applicationKey"

    const-string v12, "pressType"

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v4, "makeSideKeyCustomizationInfoIntent(...)"

    const/16 v16, 0x3

    if-ne v2, v13, :cond_d

    const-string v0, "SamsungPayAction"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    :try_start_0
    const-string v15, "com.samsung.android.spay"

    invoke-virtual {v13, v15, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v13, "Package not found: com.samsung.android.spay"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_0

    const-string/jumbo v15, "use icon from spay app info: com.samsung.android.spay"

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    move-object/from16 v21, v0

    goto :goto_2

    :cond_0
    const-string/jumbo v13, "use icon from resource: sec_function_key_icon_samsung_wallet"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080902

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v0, "samsungpay://simplepay/sidekey"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v13, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v20, v16

    goto :goto_3

    :cond_1
    move/from16 v20, v14

    :goto_3
    :try_start_1
    const-string v0, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v14, "GET_global"

    const-string/jumbo v3, "setting_title_side_key_launch"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v29, v5

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v15, v0, v14, v3, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v29, v5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v29, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v29, v5

    goto :goto_6

    :goto_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7

    :goto_5
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_7
    const-string v0, ""

    :goto_8
    const-string v3, "getPaywithSamsungPayTitle(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const v24, 0x30d40

    const/16 v25, 0x4

    const-string v18, "key_samsung_pay_quick_access"

    const/16 v19, 0x2

    const/16 v23, 0x0

    const-string/jumbo v26, "samsungpay://simplepay/sidekey"

    const/16 v27, 0x3

    move-object/from16 v17, v3

    move-object/from16 v22, v0

    move-object/from16 v28, v13

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "torch/torch"

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    array-length v13, v5

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_4

    aget-object v15, v5, v14

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v15

    move-object/from16 v17, v0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v18, v5

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v15, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_7

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const/16 v20, 0x0

    goto :goto_b

    :catch_7
    move-exception v0

    const/4 v5, 0x1

    goto :goto_a

    :cond_2
    const/4 v5, 0x1

    :cond_3
    add-int/2addr v14, v5

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_a
    const-string v5, "UsefulfeatureUtils"

    const-string v13, "couldn\'t know if support Flashlight."

    invoke-static {v5, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move/from16 v20, v16

    :goto_b
    const v0, 0x7f080900

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v0, 0x7f1437fe

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const v24, 0x493e0

    const/16 v25, 0x2

    const-string v18, "key_flashlight"

    const/16 v19, 0x2

    const/16 v23, 0x0

    const-string/jumbo v26, "torch/torch"

    const/16 v27, 0x0

    move-object/from16 v17, v5

    move-object/from16 v22, v0

    move-object/from16 v28, v3

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.app.magnifier/.Magnifier"

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.magnifier"

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move/from16 v20, v16

    goto :goto_c

    :cond_5
    const/16 v20, 0x0

    :goto_c
    const v3, 0x7f080901

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v3, 0x7f140118

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const v24, 0x55730

    const/16 v25, 0x2

    const-string v18, "key_magnifier"

    const/16 v19, 0x2

    const/16 v23, 0x0

    const-string v26, "com.sec.android.app.magnifier/.Magnifier"

    const/16 v27, 0x1

    move-object/from16 v17, v5

    move-object/from16 v22, v3

    move-object/from16 v28, v0

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->PRIVATEMODE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v5, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_d

    :catch_9
    const-string v5, "Package not found: com.samsung.android.aliveprivacy"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_6

    const-string/jumbo v13, "use icon from spay app info: com.samsung.android.aliveprivacy"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_e
    move-object/from16 v21, v3

    goto :goto_f

    :cond_6
    const-string/jumbo v5, "use icon from resource: sec_function_key_icon_secure_folder"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f080903

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_e

    :goto_f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->actionValue:Ljava/lang/String;

    const-string v5, "actionValue"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->key:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_10
    move/from16 v20, v16

    goto :goto_11

    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v16, 0x4

    goto :goto_10

    :cond_8
    const/16 v20, 0x0

    :goto_11
    const v0, 0x7f142911

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v30, v8

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v15, :cond_b

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserHandle;

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    move/from16 v18, v15

    invoke-virtual {v13}, Landroid/os/UserManager;->getUserHandle()I

    move-result v15

    if-ne v14, v15, :cond_a

    :cond_9
    const/4 v14, 0x1

    goto :goto_13

    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    const-string v15, "getUserInfo(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v23, 0x0

    goto :goto_14

    :goto_13
    add-int/2addr v8, v14

    move-object/from16 v14, v17

    move/from16 v15, v18

    goto :goto_12

    :cond_b
    const v8, 0x7f142442

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v8

    :goto_14
    new-instance v8, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    sget v19, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->pressType:I

    sget v25, Lcom/samsung/android/settings/usefulfeature/functionkey/item/SecureFolderAction;->actionType:I

    const v24, 0xc3500

    const/16 v27, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v22, v0

    move-object/from16 v26, v3

    move-object/from16 v28, v5

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "key_apps"

    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    const-class v4, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettingsProvider;

    iput-object v7, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v4, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v5, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v5, 0x0

    iput v5, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const v0, 0x7f1408ed

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v4, "key_app"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v25

    const v4, 0x7f0808fe

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    const-string v18, "key_apps"

    const/16 v19, 0x2

    const v22, 0xf4240

    move-object/from16 v17, v4

    move-object/from16 v21, v0

    move-object/from16 v23, v3

    invoke-direct/range {v17 .. v25}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/pm/ComponentInfo;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load UserManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v29, v5

    move-object/from16 v30, v8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/AiAgentAppAction;->create(Landroid/content/Context;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "wakeBixby/wakeBixby"

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v20, 0x0

    goto :goto_15

    :cond_f
    move/from16 v20, v16

    :goto_15
    const v3, 0x7f14255d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const v24, 0x30d40

    const/16 v25, 0x0

    const-string v18, "long_press_wake_bixby"

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string/jumbo v26, "wakeBixby/wakeBixby"

    const/16 v27, 0x3

    move-object/from16 v17, v5

    move-object/from16 v22, v3

    move-object/from16 v28, v0

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v0, "globalAction/globalAction"

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f14255c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const v24, 0x493e0

    const/16 v25, 0x1

    const-string v18, "long_press_power_off"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-string v26, "globalAction/globalAction"

    const/16 v27, 0x0

    move-object/from16 v17, v4

    move-object/from16 v22, v3

    move-object/from16 v28, v0

    invoke-direct/range {v17 .. v28}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    const-string v0, "com.samsung.android.intent.action.SIDE_BUTTON_SETTINGS"

    goto :goto_17

    :cond_11
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move-object/from16 v27, v7

    move-object/from16 v26, v9

    move-object/from16 v28, v11

    move-object/from16 v4, v29

    goto/16 :goto_20

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-boolean v5, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v5, :cond_14

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_18

    :cond_14
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.keyhint"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, "FunctionKeyUtils"

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "key is null. : "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v4

    move-object/from16 v27, v7

    move-object/from16 v26, v9

    move-object/from16 v28, v11

    move-object/from16 v7, v30

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1f

    :cond_15
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "com.android.settings.icon"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v15, "Couldn\'t find info"

    if-eqz v0, :cond_16

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_b

    move-object/from16 v16, v4

    :try_start_7
    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_1b

    :catch_a
    move-exception v0

    goto :goto_19

    :catch_b
    move-exception v0

    move-object/from16 v16, v4

    :goto_19
    invoke-static {v13, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_16
    move-object/from16 v16, v4

    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_17
    move-object v4, v0

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "com.android.settings.title"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_d

    move-object/from16 v26, v9

    :try_start_9
    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_1d

    :catch_c
    move-exception v0

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object/from16 v26, v9

    :goto_1c
    invoke-static {v13, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1d

    :cond_18
    move-object/from16 v26, v9

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_19
    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "com.android.settings.order"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "key : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", icon "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", title : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", order : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "com.samsung.android.settings.side_button.launch_intent_component"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1a

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x2

    invoke-virtual {v14, v12, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v14, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v15, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v17, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressActionsSettings;

    move-object/from16 v27, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v11

    iget-object v11, v15, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v7, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    iput v7, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v14, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v15}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v24, v7

    const/4 v14, 0x1

    goto :goto_1e

    :cond_1a
    move-object/from16 v27, v7

    move-object/from16 v28, v11

    const-string v7, "/"

    invoke-virtual {v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    const/4 v14, 0x2

    if-ne v11, v14, :cond_1b

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v14, 0x0

    aget-object v15, v7, v14

    const/4 v14, 0x1

    aget-object v7, v7, v14

    invoke-virtual {v11, v15, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v24, v11

    goto :goto_1e

    :cond_1b
    const/4 v14, 0x1

    const/16 v24, 0x0

    :goto_1e
    if-nez v24, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "launchIntent is null. : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v30

    const/4 v13, 0x0

    goto :goto_1f

    :cond_1c
    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.samsung.android.settings.side_button.action_key_list"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1d

    const-string v13, ";"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v30

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "title"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    const/16 v19, 0x2

    move-object/from16 v17, v13

    move-object/from16 v18, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v0

    move/from16 v22, v9

    move-object/from16 v23, v5

    move-object/from16 v25, v11

    invoke-direct/range {v17 .. v25}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/pm/ComponentInfo;Landroid/content/Intent;Ljava/util/ArrayList;)V

    :goto_1f
    if-eqz v13, :cond_1e

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    move-object/from16 v30, v7

    move-object/from16 v4, v16

    move-object/from16 v9, v26

    move-object/from16 v7, v27

    move-object/from16 v11, v28

    goto/16 :goto_18

    :goto_20
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_camera"

    move-object/from16 v3, v28

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/pm/ProviderInfo;

    invoke-direct {v11}, Landroid/content/pm/ProviderInfo;-><init>()V

    const-class v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettingsProvider;

    move-object/from16 v2, v27

    iput-object v2, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressActionsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v3, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v0, "key_quick_launch_camera"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    const v0, 0x7f0808ff

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v0, 0x7f1408b2

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v26

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    const-string v6, "key_camera"

    const/4 v7, 0x2

    const v10, 0x186a0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/pm/ComponentInfo;Landroid/content/Intent;Ljava/util/ArrayList;)V

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    move-object/from16 v2, p2

    if-nez v2, :cond_21

    return-object v4

    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    instance-of v2, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    if-eqz v2, :cond_22

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->componentInfo:Landroid/content/pm/ComponentInfo;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;->actions:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->loadDynamicFunctionKeyActions(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public static loadDynamicFunctionKeyActions(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 20

    const-string/jumbo v0, "title"

    const-string v1, "key"

    const-string v2, "FunctionKeyUtils"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v5, p1

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    :try_start_1
    const-string v0, "provider is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_1
    :try_start_3
    const-string v5, "provider acquired successfully."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "sidebutton/getInfo"

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, "isAvailable"

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action title is null. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :cond_2
    :try_start_5
    const-string v11, "intentType"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v13, "intentUri"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isAvailable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", title : "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", intentType : "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", intentUri : "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_3

    :try_start_6
    invoke-static {v6, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_quick_launch_camera"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v6, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v9, 0x0

    move-object v14, v7

    move v15, v9

    :goto_3
    move/from16 v17, v11

    goto :goto_4

    :cond_5
    const-string v7, "key_app"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v10, 0x2

    if-eqz v7, :cond_6

    const-string v7, "com.samsung.android.bixby.agent/com.samsung.android.bixby.assistanthome.AssistantHomeLauncherActivity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v6, "wakeBixby_openApps/wakeBixby_openApps"

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v9, 0x3

    move-object v14, v7

    move/from16 v17, v9

    move v15, v10

    goto :goto_4

    :cond_6
    move-object v14, v9

    move v15, v10

    goto :goto_3

    :goto_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v7, "actionValue"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "actionIntent"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    move-object v7, v13

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v18}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action intent is null or intent component is null. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v3

    :cond_8
    :try_start_9
    const-string v6, "get_info bundle is null"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_9
    :try_start_a
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_9

    :goto_6
    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    throw v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    :goto_8
    const-string v1, "can not call the provider : "

    invoke-static {v1, v0, v2}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_9
    return-object v3
.end method
