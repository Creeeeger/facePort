.class public Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SwitchForIndividualAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewHolder"
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

    .line 333
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 334
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    const v0, 0x1020018

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_widget_preference_switch:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 340
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appSwitch:Landroid/widget/Switch;

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/preference/internal/PreferenceImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->view:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appIcon:Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
