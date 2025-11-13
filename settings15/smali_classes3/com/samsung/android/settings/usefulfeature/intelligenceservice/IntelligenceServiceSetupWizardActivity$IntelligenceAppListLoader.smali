.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$IntelligenceAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;

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
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v5, p1

    check-cast v5, [Ljava/util/TreeSet;

    iget-object v6, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    sget v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->$r8$clinit:I

    const v7, 0x7f0a0412

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    aget-object v7, v5, v4

    const v8, 0x7f1424bb

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->initCategoryLayout$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v3

    const v8, 0x7f1424be

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->initCategoryLayout$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v7, v5, v2

    const v8, 0x7f1424bc

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->initCategoryLayout$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object v5, v5, v1

    const v7, 0x7f1424bf    # 1.9691654E38f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->initCategoryLayout$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d08de

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a0fdb

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f1424c0

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v14, "55"

    const-string v15, "66"

    const-string v10, "11"

    const-string v11, "22"

    const-string v12, "33"

    const-string v13, "44"

    const-string v16, "77"

    const-string v17, "88"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f1424c2

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "11"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v10

    const-string v11, "22"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v12

    const-string v13, ""

    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v12, v12, -0x2

    const-string/jumbo v9, "sec"

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    const/16 v11, 0x258

    invoke-static {v9, v11, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    new-instance v11, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;

    invoke-direct {v11, v6, v9, v4}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;Landroid/graphics/Typeface;I)V

    const-string v14, "33"

    invoke-static {v8, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v15

    const-string v4, "44"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v17

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v17, -0x2

    new-instance v14, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;

    invoke-direct {v14, v6, v9, v3}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;Landroid/graphics/Typeface;I)V

    const-string v3, "55"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const-string v2, "66"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v19

    invoke-virtual {v4, v3, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v19, -0x2

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;

    const/4 v0, 0x2

    invoke-direct {v4, v6, v9, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;Landroid/graphics/Typeface;I)V

    const-string v0, "77"

    move-object/from16 p1, v5

    invoke-static {v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v18, v7

    const-string v7, "88"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v19

    invoke-virtual {v2, v0, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v19, -0x2

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;

    const/4 v13, 0x3

    invoke-direct {v7, v6, v9, v13}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;Landroid/graphics/Typeface;I)V

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v11, v10, v12, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v14, v15, v8, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v4, v1, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v7, v5, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    move-object/from16 v7, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v1, v5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, v6, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$1;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->getPrimaryActionButtonText$1()I

    move-result v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    iget-boolean v0, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->isSupportedSkipButton:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    const v1, 0x7f1424af

    invoke-virtual {v6, v1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
