.class public Lcom/google/android/setupcompat/template/FooterActionButton;
.super Landroid/widget/Button;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public footerButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public isPrimaryButtonStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterActionButton;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
