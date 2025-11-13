.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroidx/preference/internal/PreferenceImageView;

.field public appName:Landroid/widget/TextView;

.field public appSwitch:Landroid/widget/Switch;

.field public uid:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 527
    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 528
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v0, 0x1020018

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_widget_preference_switch:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020040

    .line 533
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/preference/internal/PreferenceImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    .line 537
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 545
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setAlpha(F)V

    .line 547
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 548
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
