.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$IntelligenceAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mCallPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v5, p1

    check-cast v5, [Ljava/util/TreeSet;

    iget-object v6, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    sget v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->$r8$clinit:I

    const v7, 0x7f0a0412

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object v7, v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mPriorityCategory:Ljava/lang/String;

    const-string v8, "com.samsung.android.settings.is.category.productivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x7f1424bf    # 1.9691654E38f

    const v9, 0x7f1424bc

    const v10, 0x7f1424bb

    const v11, 0x7f1424be

    if-eqz v7, :cond_0

    aget-object v7, v5, v2

    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v4

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v3

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v5, v5, v1

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object v7, v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mPriorityCategory:Ljava/lang/String;

    const-string v12, "com.samsung.android.settings.is.category.communicate"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v7, v5, v4

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v2

    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v3

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v5, v5, v1

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    iget-object v7, v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mPriorityCategory:Ljava/lang/String;

    const-string v12, "com.samsung.android.settings.is.category.image"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v3

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v4

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v2

    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v5, v5, v1

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v7, v5, v1

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v4

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v2

    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v5, v5, v3

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->initCategoryLayout(Ljava/util/TreeSet;Ljava/lang/String;)V

    :goto_0
    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    const v5, 0x7f0a02a2

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v6, 0x7f0a0296

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v7, 0x7f0a02ae

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v8, 0x7f0a02a9

    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f0a0fdb

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v17, "77"

    const-string v18, "88"

    const-string v11, "11"

    const-string v12, "22"

    const-string v13, "33"

    const-string v14, "44"

    const-string v15, "55"

    const-string v16, "66"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f1424c2

    invoke-virtual {v0, v12, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "11"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v13

    const-string v14, "22"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v15

    const-string v10, ""

    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v15, v15, -0x2

    const-string/jumbo v12, "sec"

    invoke-static {v12, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    const/16 v14, 0x258

    invoke-static {v12, v14, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v12

    new-instance v14, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;

    invoke-direct {v14, v0, v12, v4}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;Landroid/graphics/Typeface;I)V

    const-string v4, "33"

    invoke-static {v11, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const-string v3, "44"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v19

    invoke-virtual {v11, v4, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v19, -0x2

    new-instance v11, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;

    invoke-direct {v11, v0, v12, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;Landroid/graphics/Typeface;I)V

    const-string v2, "55"

    move-object/from16 p1, v5

    invoke-static {v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v20, v6

    const-string v6, "66"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v21

    invoke-virtual {v3, v2, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v21, -0x2

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;

    move-object/from16 v21, v7

    const/4 v7, 0x2

    invoke-direct {v6, v0, v12, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;Landroid/graphics/Typeface;I)V

    const-string v7, "77"

    move-object/from16 v22, v8

    invoke-static {v2, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    move-object/from16 v18, v9

    const-string v9, "88"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v23

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v23, -0x2

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;

    const/4 v10, 0x3

    invoke-direct {v9, v0, v12, v10}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$3;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;Landroid/graphics/Typeface;I)V

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v14, v13, v15, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v11, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v6, v5, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v9, v8, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    move-object/from16 v9, v18

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v8, v22

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;I)V

    move-object/from16 v7, v21

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;I)V

    move-object/from16 v6, v20

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v5, p1

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;I)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
