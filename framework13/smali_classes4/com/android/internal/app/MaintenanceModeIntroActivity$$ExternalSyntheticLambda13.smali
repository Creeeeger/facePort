.class public final synthetic Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    iput-boolean p2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    iget-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$7$com-android-internal-app-MaintenanceModeIntroActivity(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
