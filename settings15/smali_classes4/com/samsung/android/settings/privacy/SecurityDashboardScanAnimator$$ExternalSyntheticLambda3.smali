.class public final synthetic Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;->f$2:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->refreshMenuItemsStatusWithVi(ILjava/util/List;)V

    return-void
.end method
