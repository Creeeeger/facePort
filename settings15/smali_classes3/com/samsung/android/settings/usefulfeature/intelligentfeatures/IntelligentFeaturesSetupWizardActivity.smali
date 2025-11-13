.class public Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isFOTASetUpWizard:Z

.field public mContainer:Landroid/widget/LinearLayout;

.field public mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

.field public mIsChildAccount:Z

.field public final scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->isFOTASetUpWizard:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->scrollChangeListener:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$1;

    return-void
.end method


# virtual methods
.method public final initCategoryLayout$1$2(Ljava/util/TreeSet;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d08dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0f31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d08dc

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0797

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a1041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0f81

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->summary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d08d5

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d08d3

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->isChildAccount(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mIsChildAccount:Z

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportedIntelligentFeatures(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "IntelligentFeaturesSetupWizardActivity"

    const-string v0, "not support Intelligent features"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "isChildAccount"

    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mIsChildAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fota_suw"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->isFOTASetUpWizard:Z

    const p1, 0x7f0d08da

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080922

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f1424c9

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const-string/jumbo p1, "sec"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v0, 0x2bc

    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$IntelligenceAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
