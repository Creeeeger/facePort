.class public final Lcom/android/settings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public mContext:Landroid/content/Context;

.field public mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;


# virtual methods
.method public final putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p5, :cond_1

    iget v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int v6, v6, p4

    if-nez v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v6, v0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    iget-object v9, v0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    check-cast v9, Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, " for provider: "

    const-string v11, "Can\'t load icon drawable 0x"

    const-string v12, "AppWidgetPickActivity"

    iget-object v13, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v14, :cond_4

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v15, 0xa0

    if-eq v14, v15, :cond_3

    const/16 v15, 0xd5

    if-eq v14, v15, :cond_3

    const/16 v15, 0xf0

    if-eq v14, v15, :cond_3

    const/16 v15, 0x140

    if-eq v14, v15, :cond_3

    const/16 v15, 0x1e0

    :cond_3
    int-to-float v14, v14

    const/high16 v15, 0x3f400000    # 0.75f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget-object v9, v9, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v15, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    iget v15, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v9, v15, v14}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v7, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v9, v6, v13, v7}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    iput-object v8, v9, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    move-object/from16 v5, p3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final putCustomAppWidgets(Landroid/content/Intent;Ljava/util/List;)V
    .locals 9

    const-string v0, "customInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AppWidgetAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_2

    instance-of v6, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "error using EXTRA_CUSTOM_INFO index="

    invoke-static {v5, p1, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v4, v2

    move-object v5, v4

    goto :goto_6

    :cond_3
    const-string v5, "customExtras"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_4

    const-string v0, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    move-object v4, v2

    goto :goto_6

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v4, v5, :cond_8

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_7

    instance-of v3, v3, Landroid/os/Bundle;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    const-string p1, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-static {v4, p1, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v5, p1

    move-object v4, v0

    goto :goto_6

    :cond_9
    :goto_5
    const-string p1, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    move-object v5, v2

    :goto_6
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    return-void
.end method
