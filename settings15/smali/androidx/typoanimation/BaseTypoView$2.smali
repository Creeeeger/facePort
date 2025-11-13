.class public final Landroidx/typoanimation/BaseTypoView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Landroidx/typoanimation/TypoAnimationView;


# direct methods
.method public constructor <init>(Landroidx/typoanimation/TypoAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/TypoAnimationView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1, v0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/typoanimation/TypoAnimationView;->textInternal:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/TypoAnimationView;

    iget-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->textInternal:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/typoanimation/TypoAnimationView;->prepareText(Ljava/lang/CharSequence;)V

    return-void
.end method
