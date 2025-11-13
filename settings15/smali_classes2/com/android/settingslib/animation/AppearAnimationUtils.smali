.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppearing:Z

.field public final mDelayScale:F

.field public final mDuration:J

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field public mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

.field public final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070083

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    return-void
.end method
