.class public final Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;->mState:I

    return-void
.end method


# virtual methods
.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;->mState:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;->mState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SignalIcon[mState=0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
