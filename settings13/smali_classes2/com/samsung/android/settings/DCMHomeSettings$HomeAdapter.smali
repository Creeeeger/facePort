.class Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DCMHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    .line 358
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "error getting resource"

    .line 363
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    move/from16 v3, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const-string v4, "DCMHomeSettings"

    if-nez v3, :cond_0

    const-string v0, "getView) info is null."

    .line 365
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 369
    :cond_0
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.nttdocomo.android.dhome"

    .line 370
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    const-string v8, "com.sec.android.app.easylauncher"

    const-string v9, "com.sec.android.app.launcher"

    const-string v10, "com.nttdocomo.android.paletteui"

    const-string v11, "com.nttdocomo.android.homezozo"

    const/4 v12, 0x0

    if-nez v0, :cond_2

    .line 371
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/settings/R$xml;->sec_home_settings_list_item_third:I

    invoke-virtual {v0, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 437
    sget v2, Lcom/android/settings/R$id;->home_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 438
    sget v4, Lcom/android/settings/R$id;->home_label:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 439
    sget v6, Lcom/android/settings/R$id;->home_button:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 441
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmCurrentHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmCurrentHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 446
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    .line 375
    :cond_2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v13, Lcom/android/settings/R$xml;->sec_home_settings_list_item:I

    invoke-virtual {v0, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 377
    sget v0, Lcom/android/settings/R$id;->home_icon:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    .line 378
    sget v0, Lcom/android/settings/R$id;->home_label:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 379
    sget v0, Lcom/android/settings/R$id;->home_button:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RadioButton;

    .line 381
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 382
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const-string v0, "com.sec.android.app.SecSetupWizard"

    .line 390
    :try_start_0
    iget-object v12, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 391
    iget-object v12, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;

    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p3, v13

    const/4 v13, 0x2

    :try_start_1
    invoke-virtual {v12, v0, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 p3, v13

    .line 395
    :goto_1
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 p3, v13

    :goto_2
    const-string v12, "error getting activity of create package context"

    .line 393
    invoke-static {v4, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 399
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 400
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_6

    .line 408
    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 410
    :try_start_2
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 413
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmSamsungHomeLabel(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Load Samsung Home Label from PM"

    .line 416
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmSamsungHomeLabel(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 419
    :cond_5
    sget v0, Lcom/android/settings/R$string;->sec_home_settings_basic_home:I

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 421
    :cond_6
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x0

    .line 423
    :try_start_3
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 426
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :goto_5
    sget v0, Lcom/android/settings/R$string;->sec_home_settings_easy_home:I

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_7
    :goto_6
    const/4 v6, 0x0

    .line 402
    :try_start_4
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 405
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :goto_7
    sget v0, Lcom/android/settings/R$string;->sec_home_settings_customer_mode:I

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 431
    :cond_8
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmCurrentHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-$$Nest$fgetmCurrentHomePkg(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 432
    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p3

    :cond_a
    :goto_9
    return-object v0
.end method
