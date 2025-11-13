.class public final Lcom/google/android/setupdesign/template/RequireScrollMixin$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# instance fields
.field public final synthetic val$button:Lcom/google/android/setupcompat/template/FooterButton;

.field public final synthetic val$moreText:Ljava/lang/CharSequence;

.field public final synthetic val$nextText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$button:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$moreText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$nextText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onRequireScrollStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$moreText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$nextText:Ljava/lang/CharSequence;

    :goto_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$button:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
