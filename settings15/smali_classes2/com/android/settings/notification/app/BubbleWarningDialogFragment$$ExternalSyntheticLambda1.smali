.class public final synthetic Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iget-object p2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    sget p1, Lcom/android/settings/notification/app/BubblePreferenceController;->SYSTEM_WIDE_ON:I

    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(IILjava/lang/String;)V

    return-void
.end method
