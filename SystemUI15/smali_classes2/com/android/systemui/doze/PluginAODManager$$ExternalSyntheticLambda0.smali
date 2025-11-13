.class public final synthetic Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/PluginAODManager;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFolderStateChanged isOpened : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFolderStateChanged(Z)V

    :cond_2
    return-void
.end method
