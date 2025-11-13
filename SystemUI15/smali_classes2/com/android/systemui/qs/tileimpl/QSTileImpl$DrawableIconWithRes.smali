.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mId:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DrawableIconWithRes[resId=0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
