.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDevicesChecker:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;->isAnyPairedHearingDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    return-void
.end method
