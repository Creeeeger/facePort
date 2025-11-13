.class public final synthetic Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iget-object p2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/notification/app/BubblePreferenceController;->SYSTEM_WIDE_ON:I

    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-static {v0, p0, p2}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(IILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notification_bubbles"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
