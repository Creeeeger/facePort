.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V
    .locals 9

    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of v1, v0, Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    move-object v6, v2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    :cond_5
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x3

    const-string v6, "NotificationMemory"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_6

    const-string v0, "no-id"

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "Custom view: "

    invoke-static {v1, v0, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    goto :goto_3

    :sswitch_0
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    goto :goto_3

    :sswitch_1
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    goto :goto_3

    :sswitch_2
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    goto :goto_3

    :sswitch_3
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    :goto_3
    if-eqz v4, :cond_9

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_9

    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1020006 -> :sswitch_3
        0x10201e3 -> :sswitch_2
        0x102022a -> :sswitch_1
        0x1020293 -> :sswitch_3
        0x10202de -> :sswitch_2
        0x10202ec -> :sswitch_2
        0x10203b6 -> :sswitch_3
        0x102049e -> :sswitch_2
        0x10204e3 -> :sswitch_2
        0x1020503 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;
    .locals 8

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$getViewUsage$usageBuilder$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$getViewUsage$usageBuilder$1;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup;

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;

    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;

    new-instance p2, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget v2, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    iget v4, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    iget v5, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    iget v6, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    iget v7, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;-><init>(Lcom/android/systemui/statusbar/notification/logging/ViewType;IIIIII)V

    move-object v3, p2

    :cond_3
    return-object v3
.end method

.method public static synthetic getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    move-result-object p0

    return-object p0
.end method
