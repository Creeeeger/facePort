.class Landroidx/typoanimation/BaseTypoView$GraphemeCluster;
.super Ljava/lang/Object;
.source "BaseTypoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/typoanimation/BaseTypoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GraphemeCluster"
.end annotation


# instance fields
.field end:I

.field isRtl:Z

.field line:I

.field px:I

.field py:I

.field start:I

.field final synthetic this$0:Landroidx/typoanimation/BaseTypoView;

.field width:F


# direct methods
.method public constructor <init>(Landroidx/typoanimation/BaseTypoView;IIF)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->this$0:Landroidx/typoanimation/BaseTypoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    .line 52
    iput p3, p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    .line 53
    iput p4, p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    return-void
.end method
