.class public final Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final glifLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 1

    const-string v0, "glifLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    return-void
.end method


# virtual methods
.method public final setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setHeaderText(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->glifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v3, "getText(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v2, p1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
