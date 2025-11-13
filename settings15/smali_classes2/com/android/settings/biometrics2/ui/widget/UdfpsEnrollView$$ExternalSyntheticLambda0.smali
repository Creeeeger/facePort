.class public final synthetic Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    iput-boolean p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    iget-boolean p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$1:Z

    sget v1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->$r8$clinit:I

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    iget-boolean v2, v1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    invoke-virtual {p0, v3, v0, v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    :cond_1
    return-void
.end method
