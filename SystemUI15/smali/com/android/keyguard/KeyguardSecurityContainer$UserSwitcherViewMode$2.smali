.class public final Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;
.super Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$currentUser:Lcom/android/systemui/user/data/source/UserRecord;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/user/data/source/UserRecord;)V
    .locals 0

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;->val$currentUser:Lcom/android/systemui/user/data/source/UserRecord;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getItem(I)Lcom/android/systemui/user/data/source/UserRecord;

    move-result-object p1

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0d0149

    invoke-static {p3, p2, p3, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iget-boolean v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    if-eqz p3, :cond_1

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {p3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    if-eqz v4, :cond_2

    const v4, 0x7f080821

    invoke-virtual {p3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {p3, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_3

    const v5, 0x1120027

    invoke-static {p3, v5, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v5

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06019c

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v5, 0x7f0814aa

    invoke-virtual {p3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    const v6, 0x1120032

    invoke-static {p3, v6, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p3

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v6, v0

    aput-object v4, v6, v2

    invoke-direct {p3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p3, v0, v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;->val$currentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-ne p1, p3, :cond_4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v4, 0x7f0806b1

    invoke-virtual {p3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;->val$currentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-ne p1, p0, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->setSelectableAlpha(Landroid/view/View;)V

    return-object p2
.end method
