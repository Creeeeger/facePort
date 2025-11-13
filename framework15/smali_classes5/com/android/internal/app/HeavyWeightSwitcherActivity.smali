.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.super Landroid/app/Activity;
.source "HeavyWeightSwitcherActivity.java"


# static fields
.field public static final blacklist KEY_CUR_APP:Ljava/lang/String; = "cur_app"

.field public static final blacklist KEY_CUR_TASK:Ljava/lang/String; = "cur_task"

.field public static final blacklist KEY_HAS_RESULT:Ljava/lang/String; = "has_result"

.field public static final blacklist KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final blacklist KEY_NEW_APP:Ljava/lang/String; = "new_app"


# instance fields
.field blacklist mCurApp:Ljava/lang/String;

.field blacklist mCurTask:I

.field blacklist mHasResult:Z

.field blacklist mNewApp:Ljava/lang/String;

.field blacklist mStartIntent:Landroid/content/IntentSender;

.field private blacklist mSwitchNewListener:Landroid/view/View$OnClickListener;

.field private blacklist mSwitchOldListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent"

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "has_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cur_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cur_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "new_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    const v0, 0x109009a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setContentView(I)V

    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    const v6, 0x1040943

    const/4 v7, 0x0

    const v1, 0x102046f

    const v2, 0x102046e

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    const v6, 0x10408eb

    const v7, 0x10408ec

    const v1, 0x1020439

    const v2, 0x1020437

    const v3, 0x1020438

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    const v0, 0x102060c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102060b

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method blacklist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method blacklist setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 5

    move-object v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    move-object v3, p5

    if-eqz p5, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v2

    :cond_1
    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p7, v2}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method blacklist setText(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
