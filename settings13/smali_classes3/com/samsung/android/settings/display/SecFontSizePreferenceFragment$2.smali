.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 12

    .line 244
    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 246
    sget v1, Lcom/android/settings/R$id;->dummy_navigation_bar_bottom:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    sget v2, Lcom/android/settings/R$id;->dummy_navigation_bar_right:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 248
    sget v3, Lcom/android/settings/R$id;->dummy_navigation_bar_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 250
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 251
    invoke-virtual {p2, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 253
    sget v4, Lcom/android/settings/R$id;->sec_font_size_layout:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 255
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsMultiPaneMode(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsMultiWindowMode(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 266
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v7

    .line 267
    iget-object v8, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v8

    .line 269
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmResources(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050244

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 270
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v7, :cond_1

    .line 272
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmResources(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10504db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    goto :goto_0

    :cond_1
    move v10, v6

    :goto_0
    if-eqz v4, :cond_7

    .line 274
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsTabletDevice(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x2

    if-eq v7, p0, :cond_7

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    const/4 v8, 0x3

    if-ne v4, p0, :cond_4

    if-eqz v7, :cond_3

    if-ne v7, v8, :cond_4

    .line 291
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 292
    iput v9, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 300
    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v6, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_4
    if-ne v4, v8, :cond_6

    if-eqz v7, :cond_5

    if-ne v7, v8, :cond_6

    .line 305
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 306
    iput v9, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {v0, v9, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 314
    iget p0, p2, Landroid/graphics/Insets;->top:I

    iget v0, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v6, p0, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 317
    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 320
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 322
    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget v1, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 323
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 277
    :cond_7
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    add-int/2addr v9, v10

    .line 278
    iput v9, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 286
    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget p2, p2, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, p0, v0, p2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 256
    :cond_8
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 261
    iget p0, p2, Landroid/graphics/Insets;->left:I

    iget v0, p2, Landroid/graphics/Insets;->top:I

    iget v1, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 262
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
