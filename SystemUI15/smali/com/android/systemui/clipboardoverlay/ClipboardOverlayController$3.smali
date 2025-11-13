.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.android.systemui.SCREENSHOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    sget-object p2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {p1, p2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$3;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    :cond_0
    return-void
.end method
