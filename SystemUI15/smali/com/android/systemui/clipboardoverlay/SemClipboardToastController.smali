.class public final Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public lastCopiedTime:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    return-void
.end method
