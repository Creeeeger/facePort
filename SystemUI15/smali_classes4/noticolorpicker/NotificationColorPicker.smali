.class public final Lnoticolorpicker/NotificationColorPicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCustomedAlpha:I

.field public mReduceTransparencyAndBlurOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lnoticolorpicker/NotificationColorPicker;->mReduceTransparencyAndBlurOn:Z

    return-void
.end method

.method public static isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomBigNotification:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomHeadsUpNotification:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomPublicNotification:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    invoke-static {p0}, Lnoticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static isOnlyColorized(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    invoke-static {p0}, Lnoticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUseAppIcon(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Lcom/android/internal/widget/CachingIconView;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/internal/widget/CachingIconView;

    if-eqz p0, :cond_1

    const v1, 0x7f0a0df1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/CachingIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/CachingIconView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static setTextAsync(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/PrecomputedTextView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/PrecomputedTextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer;->precompute$default(Lcom/android/systemui/statusbar/notification/row/TextPrecomputer;Landroid/widget/TextView;Ljava/lang/CharSequence;)Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->run()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationColorPicker"

    const-string v2, "PrecomputedText setText failed for TextView:$textView"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static updateTextSize(Landroid/view/View;)V
    .locals 4

    const v0, 0x10201fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x105033d

    const v2, 0x3fa66666    # 1.3f

    const v3, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_0
    const v0, 0x1020346

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_1
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_2
    const v0, 0x102062a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x105033c

    if-eqz v0, :cond_3

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_3
    const v0, 0x102022b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final applyShawdow(Landroid/view/View;)V
    .locals 9

    const v0, 0x1020293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/CachingIconView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0604f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CachingIconView;->setColorFilter(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b1e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f070b1c

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x1

    invoke-static {v2, p0, p0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    move-object p0, v3

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/CachingIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/CachingIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 4

    invoke-virtual {p0, p1}, Lnoticolorpicker/NotificationColorPicker;->resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

    const v3, 0x7f06053d

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWallpaperThemeSettingsOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->color:I

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isApplyWallpaperThemeToNotif()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isColorPaletteGrayEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v0, 0x7f0605d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_3
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05008a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06057c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    const/4 p1, 0x1

    if-ne v0, p1, :cond_6

    :cond_5
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    :cond_6
    return v0
.end method

.method public final getExpandButtonColor(ZZ)I
    .locals 1

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnoticolorpicker/NotificationColorPicker;->mReduceTransparencyAndBlurOn:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0604dc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v0, 0x99

    invoke-static {v0, p1, p2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final getGutsTextColor()I
    .locals 3

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060683

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getNotificationBgColor$1()I
    .locals 5

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0xff

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06053e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, v1, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f05008a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060579

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, p0, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getNotificationDefaultBgColor()I
    .locals 2

    iget-boolean v0, p0, Lnoticolorpicker/NotificationColorPicker;->mReduceTransparencyAndBlurOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0604f9

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0604f8

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTextColor(IZZ)I
    .locals 6

    if-nez p3, :cond_0

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0604fe

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    move-result v1

    if-nez v1, :cond_1

    move p2, v0

    :cond_1
    const v1, 0x7f05008a

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    const/4 v3, 0x1

    const v4, 0x7f06057a

    const v5, 0x7f06053f

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p0

    return p0

    :cond_2
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p2, 0x10602e5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p2, 0x10602e4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_1
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :cond_5
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_6
    return p1

    :cond_7
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_8

    const p2, 0x10602e1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_8
    invoke-static {p1, v0, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p1

    :goto_2
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :cond_9
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_a
    return p1

    :cond_b
    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_c

    const p2, 0x10602dd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    :cond_c
    invoke-static {p1, v0, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p1

    :goto_3
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060540

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :cond_d
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f06057d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_e
    return p1
.end method

.method public final isDarkMode()Z
    .locals 1

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    return p0
.end method

.method public final isNeedToInvert()Z
    .locals 4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v0

    iget-object v2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x3c23d70a    # 0.01f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ContrastColorUtil;->shouldInvertTextColor(FZ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isNeedToInvertinNightMode(Z)Z
    .locals 4

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

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

    :goto_0
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05008a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3c23d70a    # 0.01f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3e800000    # 0.25f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    return v2
.end method

.method public final isNightModeOn()Z
    .locals 1

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resizeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, v3

    :goto_2
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 2

    iget-boolean v0, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsMinimized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v0

    if-nez v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->color:I

    :goto_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p3, v1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p3

    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_2

    invoke-static {p3, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p3

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p1, 0x7f0604d5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p0, p3, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p3

    :cond_3
    return p3
.end method

.method public final resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsMinimized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    invoke-virtual {p0, v2, p1, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result v0

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V
    .locals 6

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f060500

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f060501

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p2, :cond_0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0xa

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :cond_0
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f08127d

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f08127e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p0, v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f070b70

    const v3, 0x7f080d35

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    return-void
.end method

.method public final setPrimaryColor(Landroid/widget/TextView;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v10

    invoke-static/range {p1 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v11, v0, :cond_11

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v2, :cond_1

    invoke-virtual {v7, v2, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v3

    if-eqz v2, :cond_6

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_2
    iget-boolean v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsMinimized:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    :cond_5
    :goto_1
    invoke-static/range {p1 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isOnlyColorized(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->updateTextSize(Landroid/view/View;)V

    :cond_6
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_7
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_9

    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    :cond_9
    :goto_2
    invoke-static/range {p1 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isOnlyColorized(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->updateTextSize(Landroid/view/View;)V

    :cond_a
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    goto :goto_3

    :cond_b
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_d

    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    :cond_d
    :goto_3
    invoke-static/range {p1 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isOnlyColorized(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->updateTextSize(Landroid/view/View;)V

    :cond_e
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const v4, 0x7f0a0432

    if-ne v2, v4, :cond_10

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_10

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v3

    invoke-virtual {v7, v2, v3, v8}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v3

    :cond_f
    invoke-virtual {v7, v1, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_11
    return-void

    :cond_12
    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v12

    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    const/4 v13, 0x1

    const v14, 0x10201fa

    const v15, 0x1020346

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_13

    invoke-virtual {v7, v1, v8, v13}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    :cond_13
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderExpanded:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_14

    invoke-virtual {v7, v1, v8, v11}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    :cond_14
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_15

    invoke-virtual {v7, v1, v8, v13}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v15}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v7, v1, v9}, Lnoticolorpicker/NotificationColorPicker;->setPrimaryColor(Landroid/widget/TextView;Z)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, v14}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v7, v0, v9}, Lnoticolorpicker/NotificationColorPicker;->setPrimaryColor(Landroid/widget/TextView;Z)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    move v5, v11

    :goto_4
    if-ge v5, v6, :cond_1c

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v15

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v16

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v11

    instance-of v0, v15, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    if-nez v0, :cond_16

    instance-of v0, v15, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    if-eqz v0, :cond_17

    :cond_16
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object v5, v3

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v4

    move-object/from16 v18, v2

    move v2, v12

    move-object v15, v3

    move v3, v10

    move-object/from16 v19, v4

    move/from16 v4, p2

    move/from16 v20, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lnoticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move/from16 v21, v6

    goto :goto_6

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v12

    move v3, v10

    move-object v4, v15

    move-object v15, v5

    move/from16 v5, p2

    move/from16 v21, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v12

    move v3, v10

    move-object/from16 v4, v16

    move/from16 v5, p2

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object/from16 v1, v17

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v7, v15, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    move-object/from16 v0, v19

    if-eqz v0, :cond_19

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x3fa66666    # 1.3f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x105033d

    const/4 v5, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v7, v5, v9, v13}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1, v4, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_18
    const v1, 0x1020346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    invoke-virtual {v7, v0, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {v7, v5, v9, v13}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, v4, v3, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    goto :goto_7

    :cond_19
    const v1, 0x1020346

    const/4 v5, 0x0

    goto :goto_7

    :cond_1a
    move/from16 v20, v5

    move/from16 v21, v6

    move v5, v11

    move v1, v15

    :cond_1b
    :goto_7
    add-int/lit8 v0, v20, 0x1

    move v15, v1

    move v11, v5

    move/from16 v6, v21

    move v5, v0

    goto/16 :goto_4

    :cond_1c
    return-void
.end method

.method public final updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v9, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0bb2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->updateButtonColorOnUiModeChanged()V

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v11, v14}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v15

    invoke-virtual {v8, v14, v11, v14}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v7

    instance-of v0, v9, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v0, :cond_2

    move-object v6, v9

    check-cast v6, Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v6}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v4, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v15

    move v3, v7

    move-object v14, v4

    move-object/from16 v4, p5

    move-object v13, v5

    move/from16 v5, p4

    move-object v11, v6

    move/from16 v6, p3

    move/from16 v16, v7

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;-><init>(Lnoticolorpicker/NotificationColorPicker;IILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZI)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    instance-of v0, v11, Lcom/android/internal/widget/ConversationLayout;

    if-eqz v0, :cond_3

    move-object v6, v11

    check-cast v6, Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/ConversationLayout;->setSenderTextColor(I)V

    goto :goto_0

    :cond_2
    move/from16 v16, v7

    :cond_3
    :goto_0
    iget-object v0, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0604f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v2

    invoke-virtual {v8, v0, v2, v12}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    instance-of v2, v9, Lcom/android/internal/widget/ConversationLayout;

    if-eqz v2, :cond_9

    move-object v2, v9

    check-cast v2, Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ConversationLayout;->setLayoutColor(I)V

    invoke-virtual {v2, v10}, Lcom/android/internal/widget/ConversationLayout;->setNotificationBackgroundColor(I)V

    const v0, 0x1020006

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v3

    const v4, 0x1020295

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070bb6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x7f0604d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    :goto_1
    const v0, 0x1020296

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x1060212

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v5, 0x7f08127f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v5, 0x10802d5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070470

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/widget/ConversationLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v3, :cond_a

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    if-eqz v4, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    const v5, 0x1020293

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ConversationLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    const v5, 0x7f0a030a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    move/from16 v5, v16

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_8
    move/from16 v5, v16

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v5

    goto :goto_3

    :cond_9
    instance-of v2, v9, Lcom/android/internal/widget/MessagingLayout;

    if-eqz v2, :cond_a

    move-object v2, v9

    check-cast v2, Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLayout;->setLayoutColor(I)V

    const v0, 0x1020451

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v2, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b20

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    iget-object v0, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v1

    invoke-virtual {v8, v0, v1, v12}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v0

    instance-of v1, v9, Lcom/android/internal/widget/CallLayout;

    if-eqz v1, :cond_b

    move-object v1, v9

    check-cast v1, Lcom/android/internal/widget/CallLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/CallLayout;->setLayoutColor(I)V

    if-eqz p3, :cond_b

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/CallLayout;->setNotificationBackgroundColor(I)V

    :cond_b
    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Lnoticolorpicker/NotificationColorPicker;->updateMediaActions(Landroid/view/View;Z)V

    const v1, 0x102000d

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e

    check-cast v1, Landroid/widget/ProgressBar;

    iget-object v2, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v3, 0x7f060505

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x7f060504

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    move-object v4, v3

    const/4 v3, 0x1

    goto :goto_6

    :goto_5
    invoke-virtual {v8, v2, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v8, v4, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    :cond_e
    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v8, v9, v12, v3}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    const v1, 0x1020016

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x3fa66666    # 1.3f

    const v4, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_f

    invoke-virtual {v8, v1, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x105033d

    invoke-static {v1, v3, v4, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_f
    const v1, 0x102062a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_10

    invoke-virtual {v8, v1, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10502e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v0, 0x105033c

    invoke-static {v1, v0, v4, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_10
    return-void
.end method

.method public final updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v0, 0x10201d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    const v0, 0x10201cf

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v0, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v10, 0x108071c

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v10, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05008a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    const/16 v13, 0x3f

    invoke-static {v13, v11, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_5

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    :try_start_0
    move-object v0, v9

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->isEmphasizedMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v13, "NotificationColorPicker"

    const-string v14, "Failed to check emphasized mode."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v8, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    :goto_2
    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x105033d

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextSize(F)V

    invoke-static {v12, v13, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    invoke-virtual {v12}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v12}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v12, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v13, 0x10602d5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    const v0, 0x1020233

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v9, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v10, 0x108071e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x10205dd

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-virtual {p0, v2, v5}, Lnoticolorpicker/NotificationColorPicker;->updateMediaActions(Landroid/view/View;Z)V

    const v0, 0x7f0a0bb2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->updateButtonColorOnUiModeChanged()V

    :cond_7
    move-object/from16 v3, p4

    instance-of v0, v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    if-eqz v0, :cond_8

    const v0, 0x102022b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0, v5}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10502e8

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v3, 0x105033c

    invoke-static {v0, v3, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_8
    :goto_3
    const/4 v0, 0x7

    if-ge v8, v0, :cond_a

    sget-object v0, Lnoticolorpicker/NotificationColorSet;->INBOX_ROWS:[I

    aget v0, v0, v8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0, v5}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public final updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    if-eqz v1, :cond_2c

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0, v2}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v12

    invoke-virtual {v0, v2}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v13

    iget-boolean v14, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    const v15, 0x1020006

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/widget/ImageView;

    const v11, 0x7f080d35

    const v10, 0x7f05008a

    const v7, 0x7f08127d

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-static {v4}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    if-eqz v13, :cond_4

    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f0604d5

    invoke-virtual {v8, v15}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iget-object v15, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v6, 0xff

    invoke-static {v6, v15, v10, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v4, v9}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    goto :goto_2

    :cond_5
    move/from16 v17, v9

    :cond_6
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x1020389

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v10, 0x7f0604f5

    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isDarkMode()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x46

    goto :goto_4

    :cond_8
    const/16 v10, 0x19

    :goto_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v10, v15, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_9
    const v7, 0x1020388

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_e

    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f05008a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    if-eqz v6, :cond_e

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070472

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v8, v10, v9, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-eqz v6, :cond_e

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_6
    const v6, 0x102033b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_12

    if-eqz v17, :cond_f

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v8, 0x4c

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    if-eqz v13, :cond_11

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v5, 0x7f08127d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    const/16 v5, 0xa

    div-int/2addr v4, v5

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v4, v5, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7

    :cond_11
    const/4 v4, 0x1

    invoke-virtual {v0, v6, v4}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    :goto_7
    const v4, 0x1020503

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_13

    const/16 v5, -0xa

    int-to-float v5, v5

    const/16 v6, 0x14

    new-array v6, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v6, v11

    const/4 v11, 0x2

    aput v10, v6, v11

    const/4 v11, 0x3

    aput v10, v6, v11

    const/4 v11, 0x4

    aput v5, v6, v11

    const/4 v11, 0x5

    aput v10, v6, v11

    const/4 v11, 0x6

    aput v8, v6, v11

    const/4 v11, 0x7

    aput v10, v6, v11

    const/16 v11, 0x8

    aput v10, v6, v11

    const/16 v11, 0x9

    aput v5, v6, v11

    const/16 v11, 0xa

    aput v10, v6, v11

    const/16 v11, 0xb

    aput v10, v6, v11

    const/16 v11, 0xc

    aput v8, v6, v11

    const/16 v8, 0xd

    aput v10, v6, v8

    const/16 v8, 0xe

    aput v5, v6, v8

    const/16 v8, 0xf

    aput v10, v6, v8

    const/16 v8, 0x10

    aput v10, v6, v8

    const/16 v8, 0x11

    aput v10, v6, v8

    const/16 v8, 0x12

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v6, v8

    const/16 v8, 0x13

    aput v5, v6, v8

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_13
    const v4, 0x10202da

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual {v0, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getExpandButtonColor(ZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NotificationExpandButton;->setDefaultTextColor(I)V

    :cond_14
    const v4, 0x1020339

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_15

    invoke-virtual {v0, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getExpandButtonColor(ZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    const v4, 0x10201fa

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1050339

    const v6, 0x105033d

    const v8, 0x3fa66666    # 1.3f

    const v10, 0x3f4ccccd    # 0.8f

    if-eqz v4, :cond_19

    invoke-virtual {v0, v4, v14}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v11, :cond_16

    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderExpanded:Landroid/view/NotificationHeaderView;

    if-nez v13, :cond_17

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    if-nez v11, :cond_17

    :cond_16
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v11

    const v12, 0x7f0a0432

    if-ne v11, v12, :cond_18

    :cond_17
    invoke-static {v4, v6, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    goto :goto_8

    :cond_18
    invoke-static {v4, v5, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_19
    :goto_8
    const v4, 0x1020349

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v11, 0x2

    if-eqz v4, :cond_1a

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1a
    const v4, 0x1020348

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1b

    invoke-virtual {v0, v4, v14}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    const v4, 0x1020347

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1c

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1c
    const v4, 0x1020346

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1e

    invoke-virtual {v0, v4, v14}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v11, :cond_1d

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeader:Landroid/view/NotificationHeaderView;

    if-eqz v11, :cond_1d

    invoke-static {v4, v6, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    goto :goto_9

    :cond_1d
    invoke-static {v4, v5, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_1e
    :goto_9
    const v4, 0x1020652

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v11, 0x2

    if-eqz v4, :cond_1f

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    const v4, 0x102064e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DateTimeView;

    if-eqz v4, :cond_20

    invoke-virtual {v0, v11, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f333333    # 0.7f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v12, v13, v15, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/DateTimeView;->setTextColor(I)V

    invoke-static {v4, v5, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_20
    const v5, 0x1020260

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v11, v5, Landroid/widget/Chronometer;

    if-eqz v11, :cond_21

    check-cast v5, Landroid/widget/Chronometer;

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_21
    const v4, 0x1020299

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_22

    invoke-virtual {v0, v4, v14}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {v0, v9, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v4, v6, v10, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_22
    const v4, 0x10201f9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-eqz v4, :cond_23

    invoke-virtual {v0, v5, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    const v4, 0x10206ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_24

    invoke-virtual {v0, v5, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    const v4, 0x10206ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_25

    invoke-virtual {v0, v4, v14}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {v0, v5, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    const v4, 0x10206ac

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_26

    invoke-virtual {v0, v5, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v6

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_26
    const v4, 0x10204bf

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_29

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-nez v5, :cond_27

    move-object v6, v7

    goto :goto_b

    :cond_27
    iget-object v5, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v7, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WORK_PROFILE_ICON"

    goto :goto_a

    :cond_28
    const-string v6, "UNDEFINED"

    :goto_a
    new-instance v7, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v2}, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;-><init>(Lnoticolorpicker/NotificationColorPicker;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const-string v2, "SOLID_COLORED"

    const-string v8, "NOTIFICATION"

    invoke-virtual {v5, v6, v2, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_b
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    const v2, 0x102049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eqz v2, :cond_2a

    invoke-virtual {v0, v4, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    const v2, 0x10201e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2b

    invoke-virtual {v0, v4, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2b
    const v2, 0x10202ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v4, v14, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2c
    :goto_c
    return-void
.end method

.method public final updateIconTag(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 9

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x402080

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.samsung"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.sec"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const-string v6, "android"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v8

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.showSmallIcon"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v7

    :cond_2
    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeAppIconSettingsOn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    iget-object v2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4, v7}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4, v7}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/CachingIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070b1d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v2

    goto :goto_3

    :cond_5
    move v2, p2

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result p2

    :cond_6
    invoke-virtual {p0, v1, v2, p2}, Lnoticolorpicker/NotificationColorPicker;->resizeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a0df1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    instance-of p2, p1, Lcom/android/internal/widget/ConversationLayout;

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Lnoticolorpicker/NotificationColorPicker;->applyShawdow(Landroid/view/View;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, p1, p2, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1, p2, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final updateMediaActions(Landroid/view/View;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x10203f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v1, p2, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateSingleLine(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0828

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v0, 0x7f0a0827

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v1, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public final updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V
    .locals 3

    instance-of v0, p1, Lcom/android/internal/widget/ConversationLayout;

    if-nez v0, :cond_6

    instance-of p1, p1, Lcom/android/internal/widget/CallLayout;

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b71

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p3, p1, p1, p1, p1}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b1d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/graphics/drawable/Animatable;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/graphics/drawable/Animatable2;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result v0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lnoticolorpicker/NotificationColorPicker;->resizeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :goto_1
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08127d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080d35

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result p1

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    :goto_3
    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    goto :goto_4

    :cond_6
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_7
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const p1, 0x7f0a0df1

    invoke-virtual {p3, p1, p0}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateSmallIconForCustom(Landroid/view/View;IZ)V
    .locals 2

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    iget-object p3, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v0, 0x7f0604d6

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p3, 0x7f08127d

    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSpanned(Landroid/widget/TextView;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_c

    const v1, 0x7f0a0be1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    check-cast v4, Ljava/lang/CharSequence;

    :goto_1
    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    check-cast v4, Ljava/lang/CharSequence;

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lnoticolorpicker/NotificationColorPicker;->setTextAsync(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    :goto_4
    invoke-static {p1, v3}, Lnoticolorpicker/NotificationColorPicker;->setTextAsync(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lnoticolorpicker/NotificationColorPicker;->setTextAsync(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    :goto_6
    return-void
.end method
