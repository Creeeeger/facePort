.class public final Lcom/android/systemui/volume/util/ColorUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/ColorUtils;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/ColorUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v1, v1, [I

    filled-new-array {v1}, [[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method
