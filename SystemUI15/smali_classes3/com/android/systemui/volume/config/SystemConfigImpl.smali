.class public final Lcom/android/systemui/volume/config/SystemConfigImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final hasCutout$delegate:Lkotlin/Lazy;

.field public final isTablet$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/volume/config/SystemConfigImpl$isTablet$2;->INSTANCE:Lcom/android/systemui/volume/config/SystemConfigImpl$isTablet$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/volume/config/SystemConfigImpl$hasCutout$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/SystemConfigImpl$hasCutout$2;-><init>(Lcom/android/systemui/volume/config/SystemConfigImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final isTablet()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
