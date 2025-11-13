.class public final Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

.field public static final listTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

.field public static final popupTokens:Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

.field public static final sliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

.field public static final spinnerTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

.field public static final switchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

.field public static final tabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->lightSwitchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->switchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->lightSpinnerTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->spinnerTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;->lightPopupTokens:Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->popupTokens:Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->lightSliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->sliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->lightTabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->tabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->lightListTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->listTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final getListTokens()Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->listTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    return-object p0
.end method

.method public final getPopupTokens()Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->popupTokens:Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    return-object p0
.end method

.method public final getSliderTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->sliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    return-object p0
.end method

.method public final getSpinnerTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->spinnerTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    return-object p0
.end method

.method public final getSwitchTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->switchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    return-object p0
.end method

.method public final getTabTokens()Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->tabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x231174b5

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslLightTokenScheme"

    return-object p0
.end method
