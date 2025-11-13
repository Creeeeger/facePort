.class public final Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10

    const v0, 0x7f0a0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a057b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a057a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    const v3, 0x7f0a0d56

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/ActivityClient;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v7, v7, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v8, 0x10502c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p0

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ne v3, v8, :cond_3

    if-eqz v6, :cond_1

    if-ne v6, v9, :cond_3

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v7, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5, v5, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v7, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v5, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_3
    if-ne v3, v9, :cond_6

    if-eqz v6, :cond_4

    if-ne v6, v9, :cond_6

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v7, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v7, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_1
    iget p0, p2, Landroid/graphics/Insets;->top:I

    iget v0, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v5, p0, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget v1, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_7
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget v1, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
