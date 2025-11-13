.class Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string p2, "layout_inflater"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->loadTiles()V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_settings_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private loadTiles()V
    .locals 13

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfputmDashboardFeatureProvider(Lcom/android/settings/dashboard/DashboardFeatureProvider;)V

    .line 189
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmPreviewTileIds()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    .line 202
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_7

    move v7, v3

    .line 203
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    move v8, v3

    .line 204
    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v9}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 205
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "com.android.settings.tileid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 207
    aget-object v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_0
    move-object v8, v4

    .line 213
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_1
    move-object v10, v4

    .line 215
    :goto_4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 216
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_5

    :cond_2
    move-object v11, v4

    .line 217
    :goto_5
    new-instance v12, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v8, v10, v6, v11}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    goto :goto_6

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object v6, v9

    goto/16 :goto_2

    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    .line 223
    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v6, v4

    goto :goto_7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 229
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const-string v0, "SettingsListView"

    const-string v1, "getView():"

    .line 149
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x1020016

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x1020010

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020006

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    sget v2, Lcom/android/settings/R$id;->tile_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v3, v3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 159
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmFontSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmFontScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p3, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmFontStyle()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 161
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v3, v3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object p3, p3, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 p0, 0x8

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_4

    .line 170
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-$$Nest$sfgetmIsSummaryVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
