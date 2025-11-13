.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuredLockSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuredLockIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUser:Landroid/os/UserManager;

.field private mXmlResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 566
    const-class v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_0

    .line 602
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-$$Nest$sfgetMY_USER_ID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 606
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopConnected(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "lockdown_in_power_menu"

    const-string v4, "lock_network_and_security"

    const-string v5, "lock_after_timeout"

    const-string v6, "power_button_instantly_locks"

    if-eqz v2, :cond_1

    .line 607
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-$$Nest$sfgetMY_USER_ID()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    const-string v7, "visiblepattern"

    const-string v8, "auto_factory_reset"

    if-nez v2, :cond_2

    .line 616
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x90000

    if-eq v1, v2, :cond_3

    .line 628
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportSubLockscreen()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "lock_instantly_with_folding"

    .line 632
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPowerKey()Z

    move-result v1

    if-nez v1, :cond_5

    .line 636
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "user"

    .line 639
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    .line 640
    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mUser:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 641
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 646
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 587
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string p1, "power_button_instantly_locks"

    .line 588
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 589
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 590
    sget p1, Lcom/android/settings/R$string;->lockpattern_settings_enable_power_button_instantly_locks_sidekey:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 591
    :cond_0
    sget p1, Lcom/android/settings/R$string;->lockpattern_settings_enable_power_button_instantly_locks:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 592
    sget p1, Lcom/android/settings/R$string;->lock_screen_secured_lock_settings_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 593
    sget p1, Lcom/android/settings/R$string;->lock_instantly_with_power_key_summary:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 594
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 572
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 574
    sget v0, Lcom/android/settings/R$xml;->sec_secured_lock_settings:I

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    .line 575
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 576
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mClassName:Ljava/lang/String;

    iput-object p1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 577
    iget p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;->mXmlResId:I

    iput p0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 578
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
