.class public final Lcom/android/systemui/qs/QSSecurityFooter$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$000(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->access$100(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->access$200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$3;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_5
    return-void
.end method
