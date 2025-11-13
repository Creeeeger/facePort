.class public final Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;

.field public static final formatter12Hour:Ljava/time/format/DateTimeFormatter;

.field public static final formatter24Hour:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final resources:Landroid/content/res/Resources;

.field public final theme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;

    const-string v0, "hh:mm a"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->formatter12Hour:Ljava/time/format/DateTimeFormatter;

    const-string v0, "HH:mm"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->formatter24Hour:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->theme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final map(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Ljava/lang/Object;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 4

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->theme:Landroid/content/res/Resources$Theme;

    new-instance v3, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;

    invoke-direct {v3, p2, p0}, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;)V

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->uiConfig:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0, v3}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;->build(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    move-result-object p0

    return-object p0
.end method
