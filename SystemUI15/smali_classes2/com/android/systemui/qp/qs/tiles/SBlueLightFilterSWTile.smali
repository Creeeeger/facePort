.class public final Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    iput-object p2, p0, Lcom/android/systemui/qp/qs/tiles/SBlueLightFilterSWTile;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method
