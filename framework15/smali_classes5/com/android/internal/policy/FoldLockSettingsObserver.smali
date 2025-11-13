.class public Lcom/android/internal/policy/FoldLockSettingsObserver;
.super Landroid/database/ContentObserver;
.source "FoldLockSettingsObserver.java"


# static fields
.field private static final blacklist SETTING_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SETTING_VALUE_DEFAULT:Ljava/lang/String; = "selective_stay_awake_key"

.field public static final blacklist SETTING_VALUE_SELECTIVE_STAY_AWAKE:Ljava/lang/String; = "selective_stay_awake_key"

.field public static final blacklist SETTING_VALUE_SLEEP_ON_FOLD:Ljava/lang/String; = "sleep_on_fold_key"

.field public static final blacklist SETTING_VALUE_STAY_AWAKE_ON_FOLD:Ljava/lang/String; = "stay_awake_on_fold_key"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field blacklist mFoldLockSetting:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string/jumbo v0, "selective_stay_awake_key"

    const-string/jumbo v1, "sleep_on_fold_key"

    const-string/jumbo v2, "stay_awake_on_fold_key"

    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/FoldLockSettingsObserver;->SETTING_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist isSelectiveStayAwake()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "selective_stay_awake_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSleepOnFold()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "sleep_on_fold_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStayAwakeOnFold()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "stay_awake_on_fold_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->requestAndCacheFoldLockSetting()V

    return-void
.end method

.method public blacklist register()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string/jumbo v1, "fold_lock_behavior_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->requestAndCacheFoldLockSetting()V

    return-void
.end method

.method blacklist request()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fold_lock_behavior_setting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist requestAndCacheFoldLockSetting()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->request()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/policy/FoldLockSettingsObserver;->SETTING_VALUES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "selective_stay_awake_key"

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->setCurrentFoldSetting(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setCurrentFoldSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
