.class public final Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    iget p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCornerRadius:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
