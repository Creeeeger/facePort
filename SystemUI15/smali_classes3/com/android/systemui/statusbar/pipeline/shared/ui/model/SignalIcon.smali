.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;->state:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SignalIcon[mState=0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
