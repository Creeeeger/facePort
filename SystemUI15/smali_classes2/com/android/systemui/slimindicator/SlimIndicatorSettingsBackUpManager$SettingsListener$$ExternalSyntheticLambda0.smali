.class public final synthetic Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mCachedBlackListDBValue:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getPanelSplitRatio()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSplitQuickPanelRatio:I

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixEnabled:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getQSButtonGridWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mQsTileLayoutCustomMatrixButtonWidth:I

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isApplyWallpaperThemeToNotif()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mNotificationApplyWallpaperThemeEnabled:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getQuickStarDateFormat()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIndicatorClockDateFormat:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backUpValues(DONE) mIsBackup:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] >> ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->getLogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorSettingsBackUpManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mIsBackup:Z

    return-void
.end method
