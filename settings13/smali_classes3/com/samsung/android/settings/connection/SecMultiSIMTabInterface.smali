.class public interface abstract Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;
.super Ljava/lang/Object;
.source "SecMultiSIMTabInterface.java"


# static fields
.field public static final TAB_LAYOUT_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget v0, Lcom/android/settings/R$id;->sim_tabs:I

    sput v0, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->TAB_LAYOUT_ID:I

    return-void
.end method


# virtual methods
.method public applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 20
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getEnabledSimCnt()I

    move-result v2

    :goto_0
    if-le v2, v3, :cond_3

    .line 27
    sget v4, Lcom/android/settings/R$layout;->sec_multi_sim_layout:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    sget v4, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    sget p2, Lcom/android/settings/R$id;->sim_tabs:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 32
    new-instance v4, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;-><init>(Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;)V

    invoke-virtual {p2, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    move p0, v6

    :goto_1
    if-ge p0, v2, :cond_2

    .line 48
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 50
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-nez p0, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    invoke-virtual {p2, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_tab_icon_gap_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/material/tabs/TabLayout;->seslSetIconTextGap(I)V

    .line 52
    invoke-virtual {p2, v3}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    return-object p2
.end method

.method public abstract onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end method
