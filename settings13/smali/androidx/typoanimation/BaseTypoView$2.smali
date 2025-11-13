.class Landroidx/typoanimation/BaseTypoView$2;
.super Ljava/lang/Object;
.source "BaseTypoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/typoanimation/BaseTypoView;->init(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/typoanimation/BaseTypoView;


# direct methods
.method constructor <init>(Landroidx/typoanimation/BaseTypoView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/BaseTypoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/BaseTypoView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/BaseTypoView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/typoanimation/BaseTypoView;->access$000(Landroidx/typoanimation/BaseTypoView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    .line 106
    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView$2;->this$0:Landroidx/typoanimation/BaseTypoView;

    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/typoanimation/BaseTypoView;->prepareText(Ljava/lang/CharSequence;)V

    return-void
.end method
