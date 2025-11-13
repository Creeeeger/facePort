.class public final Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# instance fields
.field public final mContentDescription:Ljava/lang/String;

.field public final mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

.field public final mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

.field public final mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b87

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0604de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-ltz p4, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    instance-of p1, p3, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getGutsView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMenuView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    return-object p0
.end method

.method public final initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
