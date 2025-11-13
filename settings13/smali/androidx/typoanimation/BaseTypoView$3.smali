.class Landroidx/typoanimation/BaseTypoView$3;
.super Ljava/lang/Object;
.source "BaseTypoView.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/typoanimation/BaseTypoView;->handleEllipsize(Landroid/text/Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroidx/typoanimation/BaseTypoView$GraphemeCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/typoanimation/BaseTypoView;

.field final synthetic val$count:I

.field final synthetic val$s:I


# direct methods
.method constructor <init>(Landroidx/typoanimation/BaseTypoView;II)V
    .locals 0

    .line 259
    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$3;->this$0:Landroidx/typoanimation/BaseTypoView;

    iput p2, p0, Landroidx/typoanimation/BaseTypoView$3;->val$s:I

    iput p3, p0, Landroidx/typoanimation/BaseTypoView$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z
    .locals 2

    .line 262
    iget v0, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    iget v1, p0, Landroidx/typoanimation/BaseTypoView$3;->val$s:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    iget p0, p0, Landroidx/typoanimation/BaseTypoView$3;->val$count:I

    add-int/2addr v1, p0

    if-gt p1, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 259
    check-cast p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    invoke-virtual {p0, p1}, Landroidx/typoanimation/BaseTypoView$3;->test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z

    move-result p0

    return p0
.end method
