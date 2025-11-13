.class public final synthetic Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$11$com-android-internal-app-MaintenanceModeIntroActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
