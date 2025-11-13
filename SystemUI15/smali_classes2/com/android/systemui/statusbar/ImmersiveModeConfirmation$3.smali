.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mDisplayContext:Landroid/content/Context;

    :try_start_0
    const-string v1, "confirmed"

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving confirmations, sConfirmed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirm"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->handleHide$2()V

    return-void
.end method
