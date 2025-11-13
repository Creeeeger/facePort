.class public final Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCachedBlackListDBValue:Ljava/lang/String;

.field public mIndicatorClockDateFormat:I

.field public mIsBackup:Z

.field public mNotificationApplyWallpaperThemeEnabled:Z

.field public mQsTileLayoutCustomMatrixButtonWidth:I

.field public mQsTileLayoutCustomMatrixEnabled:Z

.field public final mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

.field public mSplitQuickPanelRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSplitQuickPanelRatio:I

    iput-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixButtonWidth:I

    iput-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationApplyWallpaperThemeEnabled:Z

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIndicatorClockDateFormat:I

    iput-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;I)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    return-void
.end method


# virtual methods
.method public final getLogText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (1)CachedBlackListDBValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (2)SplitQuickPanelRatio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSplitQuickPanelRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (3-1)TileLayoutCustomMatrixEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (3-2)TileLayoutCustomMatrixButtonWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixButtonWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (4)NotificationApplyWallpaperTheme:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationApplyWallpaperThemeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (5)IndicatorClockDateFormat:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIndicatorClockDateFormat:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onPluginDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resetValues() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const-string/jumbo v0, "rotate,headset"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setIconBlacklist(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplitRatio(I)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setQSButtonGridPopupEnabled(I)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setQSButtonGridWidth(I)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setApplyWallpaperThemeToNotif(I)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setQuickStarDateFormat(I)V

    return-void
.end method
