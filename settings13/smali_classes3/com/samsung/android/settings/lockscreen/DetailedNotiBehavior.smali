.class public Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;
.super Ljava/lang/Object;
.source "DetailedNotiBehavior.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/NotificationTemplateBehavior;


# instance fields
.field mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsWhiteWallpaper:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    return-void
.end method

.method private makeContentView()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_lockscreen_notification_detail_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    .line 188
    sget v1, Lcom/android/settings/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->sec_notification_preview_lock_icon_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 0

    .line 39
    const-class p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->makeContentView()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public measure(II)I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 133
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public setContentVisibility(Z)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    return-void
.end method

.method public updateHideSensitive(Z)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 142
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 147
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->app_name_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    move v1, v2

    .line 152
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public updateOpenTheme(Z)V
    .locals 0

    return-void
.end method

.method public updateQuickColoring(Z)V
    .locals 6

    const-string v0, "color"

    const-string v1, "com.android.systemui"

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "qp_notification_title_color"

    .line 60
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const-string v4, "qp_notification_content_color"

    .line 61
    invoke-virtual {p1, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    const-string v5, "qp_notification_primary_color"

    .line 62
    invoke-virtual {p1, v5, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 74
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->time:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :catch_0
    return-void
.end method

.method public updateTextInversion(Z)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 85
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mIsWhiteWallpaper:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :goto_1
    move p1, v2

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_title_inverse_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_2

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_title_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 94
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->app_name_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_title_inverse_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_3

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_title_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 97
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 100
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_time_inverse_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_4

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_notification_preview_time_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 100
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$color;->sec_notification_preview_text_inverse_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_5

    .line 104
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$color;->sec_notification_preview_text_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 103
    :goto_5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method public updateWallpaperChangedInTheme(Z)V
    .locals 0

    return-void
.end method

.method public updateWhiteWallpaper(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mIsWhiteWallpaper:Z

    return-void
.end method
