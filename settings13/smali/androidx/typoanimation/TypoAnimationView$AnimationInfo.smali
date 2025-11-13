.class Landroidx/typoanimation/TypoAnimationView$AnimationInfo;
.super Ljava/lang/Object;
.source "TypoAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/typoanimation/TypoAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationInfo"
.end annotation


# instance fields
.field fontScale:F

.field group:I

.field info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

.field opacity:F

.field rotate:F

.field final synthetic this$0:Landroidx/typoanimation/TypoAnimationView;

.field visible:Z

.field xDelta:F

.field yDelta:F


# direct methods
.method constructor <init>(Landroidx/typoanimation/TypoAnimationView;Landroidx/typoanimation/BaseTypoView$GraphemeCluster;IZ)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->this$0:Landroidx/typoanimation/TypoAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 83
    iput p3, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->group:I

    .line 84
    iput-boolean p4, p0, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->visible:Z

    return-void
.end method
