.class public final synthetic Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->lambda$registerModeChangedListener$0(Ljava/lang/Runnable;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method
