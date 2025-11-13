.class Landroidx/typoanimation/BaseTypoView$5;
.super Ljava/lang/Object;
.source "BaseTypoView.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/typoanimation/BaseTypoView;->updateTextOrders(Landroid/text/Layout;)V
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

.field final synthetic val$maxLine:I


# direct methods
.method constructor <init>(Landroidx/typoanimation/BaseTypoView;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$5;->this$0:Landroidx/typoanimation/BaseTypoView;

    iput p2, p0, Landroidx/typoanimation/BaseTypoView$5;->val$maxLine:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z
    .locals 0

    .line 346
    iget p1, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    iget p0, p0, Landroidx/typoanimation/BaseTypoView$5;->val$maxLine:I

    if-ge p1, p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 343
    check-cast p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    invoke-virtual {p0, p1}, Landroidx/typoanimation/BaseTypoView$5;->test(Landroidx/typoanimation/BaseTypoView$GraphemeCluster;)Z

    move-result p0

    return p0
.end method
