.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ICONS:Landroid/util/SparseArray;


# instance fields
.field public final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(I)V

    return-void
.end method

.method public static declared-synchronized get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 3

    const-class v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ResourceIcon[resId=0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
