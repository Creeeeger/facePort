.class public final Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final isNoBgLargeTile:Z

.field public final quickCustomTileIconResize:Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;

.field public final resourcePicker$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->Companion:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->isNoBgLargeTile:Z

    sget-object p2, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$resourcePicker$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->quickCustomTileIconResize:Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;-><init>(Landroid/content/Context;Z)V

    return-void
.end method
