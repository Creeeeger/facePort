.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    sget-boolean p1, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confirmed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading confirmations, value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImmersiveModeConfirm"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
