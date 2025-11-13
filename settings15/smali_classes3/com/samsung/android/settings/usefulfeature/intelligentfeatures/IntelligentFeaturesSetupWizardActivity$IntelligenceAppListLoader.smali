.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;

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
    .locals 4

    check-cast p1, [Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    sget v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->$r8$clinit:I

    const v1, 0x7f0a0412

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const v3, 0x7f1424c7

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->initCategoryLayout$1$2(Ljava/util/TreeSet;Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object p1, p1, v2

    const v2, 0x7f1424c6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->initCategoryLayout$1$2(Ljava/util/TreeSet;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d08de

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a0fdb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1424c8

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$1;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1424ac

    goto :goto_0

    :cond_1
    const p1, 0x7f1424ab

    :goto_0
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
