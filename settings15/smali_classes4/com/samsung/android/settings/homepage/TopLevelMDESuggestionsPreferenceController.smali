.class public Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;
.super Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopLevelMDESuggestionsPreferenceController"

.field private static final TOP_INSET_CATEGORY_KEY:Ljava/lang/String; = "top_level_mde_suggestions_top_inset_category"

.field private static final TOP_LEVEL_SAMSUNG_ACCOUNT_KEY:Ljava/lang/String; = "top_level_samsung_account"


# instance fields
.field private mDependencyPreference:Landroidx/preference/Preference;

.field private mDepthInSuggestionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/mde/SuggestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightRequired:Z

.field private mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

.field private final mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

.field private mOnBodySuggestionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/mde/SuggestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/Preference;

.field private mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;


# direct methods
.method public static synthetic $r8$lambda$CzILodRP5dwH_yojc_MJCcWFFbM(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->lambda$sendSuggestionLaunchedMessage$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshMenu(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->refreshMenu()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mseparateSuggestionInfoList(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->separateSuggestionInfoList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;-><init>(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    sget-object p2, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mHighlightRequired:Z

    return-void
.end method

.method private synthetic lambda$sendSuggestionLaunchedMessage$0(Landroid/os/Bundle;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendSuggestionLaunchedMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method private refreshMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateOnBodySuggestionInfoList()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateDepthInSuggestionInfoList()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshMenu: change available is false, because suggestion info is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mHighlightRequired:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    iget-object v0, v0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setHighlightPreferenceKeyByForce : "

    invoke-static {v4, v1, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mHighlightRequired:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;-><init>(Lcom/android/settings/homepage/TopLevelHighlightMixin;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateFromGoodSettings()V

    return-void
.end method

.method private sendSuggestionLaunchedMessage()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;Landroid/os/Bundle;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private separateSuggestionInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/mde/SuggestionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v1, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mUiType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "on_body"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "depth_in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDepthInSuggestionInfoList()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string v1, "com.samsung.android.settings.mde.MDESuggestionsSettings"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f12004e

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142567

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f080a83

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateOnBodySuggestionInfoList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/samsung/android/settings/mde/SuggestionInfo;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string/jumbo v0, "top_level_mde_suggestions_top_inset_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "top_level_samsung_account"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDependencyPreference:Landroidx/preference/Preference;

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAvailabilityStatus: depth in suggestion info size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on body suggestion info size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDepthInSuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePreferenceTreeClick: Click on-body suggestion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mOnBodySuggestionInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->sendSuggestionLaunchedMessage()V

    :cond_0
    return p1
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateFromGoodSettings()V
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDependencyPreference:Landroidx/preference/Preference;

    instance-of v2, v1, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v2, v2, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->isVisible()Z

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Lcom/android/settings/widget/HomepagePreference;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/HomepagePreference;->setVisibleByGoodSettings(Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Lcom/android/settings/widget/HomepagePreference;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/HomepagePreference;->setOrder(I)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
