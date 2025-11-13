.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$IntelligenceAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->mCallPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;

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
    .locals 7

    check-cast p1, [Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    sget v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->$r8$clinit:I

    const v1, 0x7f0a0412

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mPriorityCategory:Ljava/lang/String;

    const-string v2, "com.samsung.android.settings.is.intelligent.features.category.productive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f1424c7

    const v4, 0x7f1424c6

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    aget-object v1, p1, v5

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->initCategoryLayout$1$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->initCategoryLayout$1$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->mIFAManager:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mPriorityCategory:Ljava/lang/String;

    const-string v6, "com.samsung.android.settings.is.intelligent.features.category.creativity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->initCategoryLayout$1$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    aget-object p1, p1, v5

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->initCategoryLayout$1$1(Ljava/util/TreeSet;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$IntelligenceAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    const p1, 0x7f0a02a2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v0, 0x7f0a02ae

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0fdb

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f1424c8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
