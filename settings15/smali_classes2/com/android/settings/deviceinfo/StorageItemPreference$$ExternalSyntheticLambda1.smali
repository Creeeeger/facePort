.class public final synthetic Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-wide p2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;->f$1:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBarAndSizeInfo(JJ)V

    return-void
.end method
