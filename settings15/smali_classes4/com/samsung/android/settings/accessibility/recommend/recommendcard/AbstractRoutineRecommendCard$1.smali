.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->this$0:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getButtonContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const p0, 0x7f142596

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f141e30

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getButtonLoggingValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->this$0:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;->getButtonLoggingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getButtonText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141e3d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final onButtonClicked()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.routines.LAUNCH_SETTINGS_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.routines"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/SettingsApplication;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v1}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->val$context:Landroid/content/Context;

    const v3, 0x7f1417c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->val$context:Landroid/content/Context;

    const-string v2, "from_settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;->this$0:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityNotFoundException : Can not found Routine Activity"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
