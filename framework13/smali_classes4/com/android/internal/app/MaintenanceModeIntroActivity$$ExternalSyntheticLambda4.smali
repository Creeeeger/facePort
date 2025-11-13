.class public final synthetic Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->lambda$triggerDump$13$com-android-internal-app-MaintenanceModeIntroActivity()V

    return-void
.end method
