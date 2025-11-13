.class public final Lcom/android/systemui/widget/SystemUIWidgetRes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mResIds:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-direct {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;-><init>()V

    sput-object v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;
    .locals 2

    sget-object v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "#"

    invoke-static {p2, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_1

    const-string p0, "Invalid "

    const-string v0, "SystemUIWidgetRes"

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return p2
.end method
