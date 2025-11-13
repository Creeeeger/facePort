.class public Lcom/android/settings/security/screenlock/ScreenLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field public static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    new-instance v0, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;

    const v1, 0x7f17012f

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {v1, v2, p0, p2}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;-><init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;

    invoke-direct {v1, v2, p0, p2}, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;-><init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;

    invoke-direct {v1, v2, p0, p2}, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;-><init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;

    invoke-direct {v1, v2, p0, p2}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;-><init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p0, v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenLockSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f1

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17012f

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x6f

    const/4 v2, -0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget p2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setAutoPinConfirm(ZI)V

    iget-object p1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->refreshStoredPinLength(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setAutoPinConfirm(ZI)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget p2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setAutoPinConfirm(ZI)V

    iget-object p1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->refreshStoredPinLength(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setAutoPinConfirm(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onOwnerInfoUpdated()V
    .locals 1

    const-class v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method
