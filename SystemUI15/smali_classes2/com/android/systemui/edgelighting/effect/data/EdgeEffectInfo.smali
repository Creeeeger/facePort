.class public final Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mEdgeLightingAction:Z

.field public mEffectColors:[I

.field public mEffectType:I

.field public mHasActionButton:Z

.field public mInfiniteLighting:Z

.field public mIsBlackBG:Z

.field public mIsGrayScaled:Z

.field public mIsMultiResolutionSupoorted:Z

.field public mIsSmallIcon:Z

.field public mIsUsingAppIcon:Z

.field public mLightingDuration:J

.field public mNotificationKey:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPlusEffectBundle:Landroid/os/Bundle;

.field public mStrokeAlpha:F

.field public mStrokeWidth:F

.field public mText:[Ljava/lang/String;

.field public mWidthDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    return-void
.end method
