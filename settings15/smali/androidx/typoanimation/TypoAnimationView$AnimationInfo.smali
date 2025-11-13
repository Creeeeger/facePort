.class public final Landroidx/typoanimation/TypoAnimationView$AnimationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public fontScale:F

.field public final group:I

.field public final info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

.field public opacity:F

.field public rotate:F

.field public visible:Z

.field public xDelta:F

.field public yDelta:F


# direct methods
.method public constructor <init>(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iput p2, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->group:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->visible:Z

    return-void
.end method
