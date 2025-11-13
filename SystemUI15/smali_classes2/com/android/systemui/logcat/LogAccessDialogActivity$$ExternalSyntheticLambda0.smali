.class public final synthetic Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/logcat/LogAccessDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/logcat/LogAccessDialogActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/logcat/LogAccessDialogActivity;

    sget p1, Lcom/android/systemui/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    invoke-virtual {p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity;->declineLogAccess()V

    return-void
.end method
