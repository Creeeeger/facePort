.class public Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;
.super Ljava/lang/Object;
.source "DesktopModeManagerWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DesktopModeManagerWrapper"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field blacklist mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field blacklist mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method static synthetic blacklist lambda$registerModeChangedListener$0(Ljava/lang/Runnable;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "DesktopModeManagerWrapper"

    const-string v2, "dispose() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist isDesktopModeDualView()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "DesktopModeManagerWrapper"

    const-string v3, "isDesktopModeDualView() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist isDesktopModeStandalone()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "DesktopModeManagerWrapper"

    const-string v3, "isDesktopModeStandalone() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist registerModeChangedListener(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "DesktopModeManagerWrapper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext.getSystemService() : exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "registerModeChangedListener() : mDesktopModeManager is NULL!"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->dispose()V

    :cond_1
    new-instance v0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    return-void
.end method
