.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettingsProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettingsProvider;",
        "Landroid/content/ContentProvider;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "sidebutton/getInfo"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v1, :cond_11

    const-string v0, "key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_app"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "intentUri"

    const-string v4, "intentType"

    const-string/jumbo v5, "title"

    const-string v6, "isAvailable"

    const-string v7, "makeSideKeyCustomizationInfoIntent(...)"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v10, "function_key_config_doublepress_app_action"

    invoke-static {v1, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, " is not installed."

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Press Type : 2 / app : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "FunctionKeyInfo"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v9, v8

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v13, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v8, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    iput v15, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    iput-object v10, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mDB:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-wide v15, 0x100000200L

    invoke-static/range {v15 .. v16}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v15

    invoke-virtual {v10, v13, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v0, v13}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    const-string v8, " is disabled."

    if-nez v15, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_1
    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v10, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is archived."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    iput v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v13, 0x200

    invoke-virtual {v10, v14, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, v14}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput v8, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    iput v8, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    goto :goto_0

    :catch_1
    const/4 v8, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    :goto_0
    if-eqz v9, :cond_4

    iget-object v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mDB:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    const-string v8, ""

    if-eqz v7, :cond_9

    iget-object v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    iget v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    iget-object v0, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const v7, 0x7f141526

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v7, 0x7f141527

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v7, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f141528

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_4

    :cond_9
    :goto_3
    move-object/from16 v16, v8

    :goto_4
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v12, "key_app"

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x2

    const/16 v21, 0x1

    move-object v11, v0

    move-object/from16 v22, v1

    invoke-direct/range {v11 .. v22}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_b

    iget-object v6, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_c

    iget-object v8, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionValue:Ljava/lang/String;

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_d
    const-string v1, "key_quick_launch_camera"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f142669

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v0, "getString(...)"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "key_quick_launch_camera"

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v17, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    const/16 v18, 0x1

    move-object v8, v0

    move-object/from16 v19, v1

    invoke-direct/range {v8 .. v19}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    :goto_9
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_f

    iget-object v6, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_10

    iget-object v8, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;->actionValue:Ljava/lang/String;

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    :goto_b
    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_c
    return-object v2

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown method : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
