.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1303c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isColorAdjustment()Z

    move-result p0

    return p0
.end method
