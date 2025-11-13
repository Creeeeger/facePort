.class public final Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    const p1, 0x7f1701ae

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "error getting resource"

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const-string v4, "DCMHomeSettings"

    if-nez v3, :cond_0

    const-string v0, "getView) info is null."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    const v8, 0x7f0a077b

    const v9, 0x7f0a077e

    const v10, 0x7f0a077d

    const-string v11, "com.sec.android.app.easylauncher"

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.nttdocomo.android.paletteui"

    const-string v14, "com.nttdocomo.android.homezozo"

    const/4 v15, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f1701ae

    invoke-virtual {v0, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v9, v9, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    :cond_2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f1701ad

    invoke-virtual {v0, v7, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const-string v0, "com.sec.android.app.SecSetupWizard"

    :try_start_0
    iget-object v15, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v15, v15, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    iget-object v15, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v15, v15, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p3, v7

    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v15, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
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

    move-object/from16 p3, v7

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 p3, v7

    goto :goto_2

    :goto_1
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string v7, "error getting activity of create package context"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v6, 0x0

    goto :goto_6

    :cond_5
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Load Samsung Home Label from PM"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_6
    const v0, 0x7f14248b

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    const v0, 0x7f142490

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :goto_6
    :try_start_4
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const v0, 0x7f14248d

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p3

    :cond_a
    :goto_9
    return-object v0
.end method
