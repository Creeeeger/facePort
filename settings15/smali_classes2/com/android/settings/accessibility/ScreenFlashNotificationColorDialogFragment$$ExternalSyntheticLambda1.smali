.class public final synthetic Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

.field public final synthetic f$1:Lcom/android/settings/accessibility/ColorSelectorLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;Lcom/android/settings/accessibility/ColorSelectorLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/accessibility/ColorSelectorLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/accessibility/ColorSelectorLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorSelectorLayout;->getCheckedColor(I)I

    move-result p0

    iput p0, p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    iget-object p1, p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mConsumer:Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
