.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "isAnyPairedHearingDevice check"

    return-object p0
.end method
