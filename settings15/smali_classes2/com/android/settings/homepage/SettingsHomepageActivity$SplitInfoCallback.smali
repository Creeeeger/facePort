.class public final Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final mActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

.field public mIsSplitUpdatedUI:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;->mIsSplitUpdatedUI:Z

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;->mActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;->mIsSplitUpdatedUI:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;->mActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;->mIsSplitUpdatedUI:Z

    sget-object p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->EXTRA_INITIAL_REFERRER:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    :cond_0
    return-void
.end method
