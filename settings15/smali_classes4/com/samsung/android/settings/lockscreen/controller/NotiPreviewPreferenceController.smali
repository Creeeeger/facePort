.class public Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;


# static fields
.field static final KEY:Ljava/lang/String; = "noti_preview"

.field private static final TAG:Ljava/lang/String; = "NotiPreviewPreferenceController"

.field public static final VIEW_STYLE_DETAILED:I = 0x0

.field public static final VIEW_STYLE_ICON:I = 0x1

.field public static final VIEW_STYLE_ICON_TYPO:I = 0x2


# instance fields
.field mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotiCardLayout:Landroid/widget/FrameLayout;

.field private mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

.field private mNotificationPreview:Landroid/widget/ImageView;

.field private mNotificationView:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field mPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mUiMode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcropBitmap(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misLandscape(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 1

    const-string/jumbo v0, "noti_preview"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addNotificationPreView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0aa9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0aa8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getLockscreenWallpaperImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0ab0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->setNotificationViewParams()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->refreshNotiCardLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->updateNotiCardOpacity()V

    return-void
.end method

.method private centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p0, p2, :cond_1

    if-ge v0, p3, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-le p0, p2, :cond_2

    sub-int v2, p0, p2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-le v0, p3, :cond_3

    sub-int v1, v0, p3

    div-int/lit8 v1, v1, 0x2

    :cond_3
    if-le p2, p0, :cond_4

    move p2, p0

    :cond_4
    if-le p3, v0, :cond_5

    move p3, v0

    :cond_5
    invoke-static {p1, v2, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const-string/jumbo v4, "original width ["

    const-string v5, "], height ["

    const-string v6, "]"

    invoke-static {v4, v5, v0, v1, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "NotiPreviewPreferenceController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "display width ["

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_3

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    int-to-float v9, v1

    :goto_0
    div-float/2addr v4, v9

    goto :goto_1

    :cond_0
    int-to-float v4, v3

    int-to-float v9, v0

    goto :goto_0

    :goto_1
    int-to-float v9, v0

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v10, v1

    mul-float/2addr v10, v4

    float-to-int v4, v10

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    const-string/jumbo v10, "rate width ["

    invoke-static {v10, v5, v9, v4, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v9, :cond_1

    if-ge v1, v4, :cond_2

    :cond_1
    invoke-static {p1, v9, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scaled bitmap width ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "center crop bitmap width ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-double v0, v2

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v9

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070ba6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1, v2, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    int-to-double v3, v3

    mul-double/2addr v3, v9

    double-to-int v0, v3

    move v3, v2

    :cond_4
    const/4 p0, 0x0

    invoke-static {p1, p0, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "result bitmap width ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getLockscreenWallpaperImg()Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;-><init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p0, 0x0

    return-object p0
.end method

.method private getNotificationViewWidth()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f333333    # 0.7f

    :goto_1
    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_2

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f3c28f6    # 0.735f

    goto :goto_1

    :goto_2
    return p0
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method private isLandscape()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "NotiPreviewPreferenceController"

    const-string v1, "landscape check is failed."

    invoke-static {p0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private refreshNotiCardLayout()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper_transparent"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " White Wallpaper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NTV"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsWhiteWallpaper:Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentBehavior:Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;

    iput-boolean v0, v2, Lcom/samsung/android/settings/lockscreen/DetailedNotiBehavior;->mIsWhiteWallpaper:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsInOpenTheme:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsQuickColoring:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getStackBGColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mViewOpacity:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(FZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setNotificationViewParams()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bb0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getNotificationViewWidth()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNotiCardOpacity()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "lock_noticard_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(FZ)V

    :cond_0
    return-void
.end method

.method private updatePreview(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget v3, p1, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const-string v3, " Change currentmode = 2"

    const-string v5, "NTV"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->changeState()V

    iput v4, p1, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mCurrentMode:I

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->refreshNotiCardLayout()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "noti_card_seekbar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "notification_details"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "set_visibility"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(FZ)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->updatePreview(I)V

    goto :goto_1

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9934f1 -> :sswitch_2
        0x68ad06ee -> :sswitch_1
        0x6f216615 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->addNotificationPreView()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getLockscreenWallpaperImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->getDimmedBgColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->setNotificationViewParams()V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
