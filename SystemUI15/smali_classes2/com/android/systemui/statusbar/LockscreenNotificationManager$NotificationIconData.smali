.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mColor:I

.field public final mContext:Landroid/content/Context;

.field public final mIconArray:Ljava/util/ArrayList;

.field public mTagFreshDrawable:I

.field public mTagIsAppColor:I

.field public mTagShowConversation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mColor:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->iconLevel:I

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    instance-of v4, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_4

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p2

    new-array v4, p2, [Landroid/graphics/drawable/Drawable;

    :goto_2
    if-ge v2, p2, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_6

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_6
    :goto_3
    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    invoke-virtual {v1, p2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagShowConversation:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void

    :catch_0
    move-exception p0

    const-string p1, "LockscreenNotificationManager"

    const-string p2, "createImageViewIcon NullPointerException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method
