.class public Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartPopupViewSettings.java"


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final mSuggestedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppContext:Landroid/content/Context;

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mEnabledPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mInstalledPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public static synthetic $r8$lambda$8ytvETBTRrslZ__iQ6ZDioGopOw(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->lambda$updatePackageList$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ee6sYXLHgtuNgVJ98_Czj85FSAY(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->lambda$updatePackageList$1(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9Wjhshepo82ZkObIxzeLi3bYKA(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledPackageList(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mswitchSmartPopupViewItem(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->switchSmartPopupViewItem(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSuggestedPackageList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.messaging"

    const-string v2, "com.verizon.messaging.vzmsgs"

    const-string v3, "com.kakao.talk"

    const-string v4, "jp.naver.line.android"

    const-string v5, "com.sds.mysinglesquare"

    const-string v6, "com.samsung.knox.message"

    const-string v7, "com.whatsapp"

    const-string v8, "com.google.android.talk"

    const-string v9, "com.sgiggle.production"

    const-string v10, "com.nimbuzz"

    const-string v11, "kik.android"

    const-string v12, "com.bsb.hike"

    const-string v13, "com.viber.voip"

    const-string v14, "com.tencent.mm"

    const-string v15, "org.telegram.messenger"

    const-string v16, "com.skype.raider"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    return-void
.end method

.method private getInstalledSuggestedPackageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    sget-object v2, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isDifferentStringList(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 326
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onResume$0()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->isDifferentStringList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 207
    iget-object v3, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->isDifferentStringList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 211
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    .line 212
    iput-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->updatePackageList()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updatePackageList$1(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    .line 241
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "gap_between_app_list"

    const-string v2, "suggested_apps"

    const-string v3, "description"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v1, p2}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    .line 258
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    return-void
.end method

.method private synthetic lambda$updatePackageList$2()V
    .locals 4

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->getInstalledSuggestedPackageList()Ljava/util/List;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 232
    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    .line 233
    invoke-static {v2, v1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->filterMultiWindowSupportPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 283
    new-instance v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method

.method private switchSmartPopupViewItem(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "BubbleContainer"

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartPopupViewSettings] package on: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartPopupViewSettings] package off: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->putPackageStrListToDB(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    sget p0, Lcom/android/settings/R$id;->manage_memory:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    sget p0, Lcom/android/settings/R$id;->manage_perms:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    sget p0, Lcom/android/settings/R$id;->perms_usage:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    sget p0, Lcom/android/settings/R$id;->special_access:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    sget p0, Lcom/android/settings/R$id;->sort_order:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    sget p0, Lcom/android/settings/R$id;->sort_order_alpha:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    sget p0, Lcom/android/settings/R$id;->sort_order_size:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    sget p0, Lcom/android/settings/R$id;->show_system:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    sget p0, Lcom/android/settings/R$id;->hide_system:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    sget p0, Lcom/android/settings/R$id;->reset_app_preferences:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    sget p0, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    sget p0, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updatePackageList()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10fe

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 107
    sget p0, Lcom/android/settings/R$xml;->sec_smart_popup_view_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mActivity:Landroid/app/Activity;

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    const-string v0, "suggested_smart_popup_view_list"

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->app_picker_view:I

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    const-string v0, "smart_popup_view_list"

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 134
    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 135
    invoke-virtual {v1}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 146
    sget v0, Lcom/android/settings/R$menu;->sec_manage_apps:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    .line 148
    sget p2, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/16 p2, 0xa

    .line 149
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 152
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 156
    sget p2, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p2, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 220
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 221
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
