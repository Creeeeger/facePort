.class final Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$flagEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$flagEnabled$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$flagEnabled$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->featureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

    sget-object v0, Lcom/android/systemui/flags/Flags;->COMMUNAL_SERVICE_ENABLED:Lcom/android/systemui/flags/ResourceBooleanFlag;

    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
