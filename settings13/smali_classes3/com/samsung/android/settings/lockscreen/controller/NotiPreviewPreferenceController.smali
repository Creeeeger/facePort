.class public Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotiPreviewPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;
    }
.end annotation


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
.method static bridge synthetic -$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcropBitmap(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misLandscape(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 1

    const-string v0, "noti_preview"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    .line 53
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addNotificationPreView()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    .line 91
    sget v1, Lcom/android/settings/R$id;->notification_preview_layout:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_2

    .line 98
    sget v1, Lcom/android/settings/R$id;->notification_preview:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getLockscreenWallpaperImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_lock_settings_notification_preview_frame:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->notification_view:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->setNotificationViewParams()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->refreshNotiCardLayout()V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->updateNotiCardOpacity()V

    return-void
.end method

.method private centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p0, p2, :cond_1

    if-ge v0, p3, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-le p0, p2, :cond_2

    sub-int v2, p0, p2

    .line 246
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-le v0, p3, :cond_3

    sub-int v1, v0, p3

    .line 249
    div-int/lit8 v1, v1, 0x2

    :cond_3
    if-le p2, p0, :cond_4

    move p2, p0

    :cond_4
    if-le p3, v0, :cond_5

    move p3, v0

    .line 262
    :cond_5
    invoke-static {p1, v2, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 187
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 188
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 189
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 190
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original width ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], height ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "NotiPreviewPreferenceController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display width ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_3

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    int-to-float v9, v1

    goto :goto_0

    :cond_0
    int-to-float v4, v3

    int-to-float v9, v0

    :goto_0
    div-float/2addr v4, v9

    int-to-float v9, v0

    mul-float/2addr v9, v4

    float-to-int v9, v9

    .line 196
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v10, v1

    mul-float/2addr v10, v4

    float-to-int v4, v10

    .line 197
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rate width ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v9, :cond_1

    if-ge v1, v4, :cond_2

    .line 202
    :cond_1
    invoke-static {p1, v9, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaled bitmap width ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 205
    :cond_2
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "center crop bitmap width ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const/4 v0, 0x0

    int-to-double v9, v2

    const-wide v11, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v9, v11

    double-to-int v1, v9

    .line 212
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v9, Lcom/android/settings/R$dimen;->sec_lock_setting_notification_preview_layout_height:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 215
    invoke-static {p1, v2, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    int-to-double v8, v3

    mul-double/2addr v8, v11

    double-to-int v1, v8

    move v3, v2

    .line 220
    :cond_4
    invoke-static {p1, v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "result bitmap width ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 2

    .line 176
    new-instance v0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;-><init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 177
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method

.method private getNotificationViewWidth()I
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 119
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_3

    .line 128
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f333333    # 0.7f

    goto :goto_2

    .line 123
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f3c28f6    # 0.735f

    :goto_2
    mul-float/2addr p0, v0

    float-to-int p0, p0

    :goto_3
    return p0
.end method

.method private getRightPaneWidthRatio()F
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->preferences_left_pane_weight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$integer;->preferences_right_pane_weight:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float v1, p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 152
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

    .line 148
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

    .line 268
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

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "NotiPreviewPreferenceController"

    const-string v1, "landscape check is failed."

    .line 271
    invoke-static {p0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private refreshNotiCardLayout()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_2

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 285
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 286
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "lockscreen_wallpaper_transparent"

    invoke-static {v4, v6, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v3, :cond_4

    if-eq v4, v1, :cond_3

    if-nez v4, :cond_4

    :cond_3
    move v2, v1

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setWallpaperChangedInThemeState(Z)V

    .line 290
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setIsWhiteWallpaper(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private setNotificationViewParams()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_lock_setting_notification_preview_notification_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getNotificationViewWidth()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNotiCardOpacity()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->config_default_lock_noticard_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "lock_noticard_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(F)V

    :cond_0
    return-void
.end method

.method private updatePreview(I)V
    .locals 4

    .line 156
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

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setCurrentMode(I)V

    if-eqz v0, :cond_2

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->refreshNotiCardLayout()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "noti_card_seekbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "notification_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "set_visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 359
    :pswitch_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    if-eqz p0, :cond_4

    .line 361
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setViewOpacity(F)V

    goto :goto_1

    .line 348
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->updatePreview(I)V

    goto :goto_1

    .line 351
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 353
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    goto :goto_1

    .line 355
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setSensitiveMode(I)V

    :cond_4
    :goto_1
    return-void

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

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 60
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->addNotificationPreView()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 74
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

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 295
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 296
    iput v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mOrientation:I

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotificationPreview:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->getLockscreenWallpaperImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mNotiCardView:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->updateUiMode()V

    .line 301
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->mUiMode:I

    .line 303
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

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
