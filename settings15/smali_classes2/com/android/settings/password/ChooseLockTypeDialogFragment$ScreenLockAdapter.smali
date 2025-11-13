.class public final Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V
    .locals 1

    const v0, 0x7f0d016c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d016c

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ScreenLockType;

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    const p0, 0x7f080561

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p0, 0x7f08056b

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p0, 0x7f080562

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    invoke-virtual {p3, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
