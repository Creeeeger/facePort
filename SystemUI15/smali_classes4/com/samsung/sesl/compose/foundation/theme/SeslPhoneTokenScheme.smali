.class public final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;


# instance fields
.field public final context:Landroid/content/Context;

.field public final defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

.field public final isDarkMode:Z

.field public final listTokens$delegate:Lkotlin/Lazy;

.field public final popupTokens$delegate:Lkotlin/Lazy;

.field public final sliderTokens$delegate:Lkotlin/Lazy;

.field public final spinnerTokens$delegate:Lkotlin/Lazy;

.field public final switchTokens$delegate:Lkotlin/Lazy;

.field public final tabTokens$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;->LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    :goto_0
    iput-object v0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-static {p1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->switchTokens$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->spinnerTokens$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->popupTokens$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->sliderTokens$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->tabTokens$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;

    invoke-direct {p1, p0}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->listTokens$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getListTokens()Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->listTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    return-object p0
.end method

.method public final getPopupTokens()Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->popupTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    return-object p0
.end method

.method public final getSliderTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->sliderTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    return-object p0
.end method

.method public final getSpinnerTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->spinnerTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    return-object p0
.end method

.method public final getSwitchTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->switchTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    return-object p0
.end method

.method public final getTabTokens()Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->tabTokens$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeslPhoneTokenScheme(context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
