.class Landroidx/typoanimation/BaseTypoView$4;
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

.field final synthetic val$s:I


# direct methods
.method constructor <init>(Landroidx/typoanimation/BaseTypoView;I)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$4;->this$0:Landroidx/typoanimation/BaseTypoView;

    iput p2, p0, Landroidx/typoanimation/BaseTypoView$4;->val$s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z
    .locals 0

    .line 292
    iget p1, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    iget p0, p0, Landroidx/typoanimation/BaseTypoView$4;->val$s:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 289
    check-cast p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    invoke-virtual {p0, p1}, Landroidx/typoanimation/BaseTypoView$4;->test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z

    move-result p0

    return p0
.end method
