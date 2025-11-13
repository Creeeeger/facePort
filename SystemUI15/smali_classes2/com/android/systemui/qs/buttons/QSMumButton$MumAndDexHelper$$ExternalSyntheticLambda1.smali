.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

.field public final synthetic f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method
