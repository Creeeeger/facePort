.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateUseThemeDefault()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
