.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ScreenDecorationsComponent;


# instance fields
.field public final context:Landroid/content/Context;

.field public final dotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

.field public final dotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final screenDecorationsComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;

.field public screenDecorationsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->screenDecorationsComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->dotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->dotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->initialize(Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;)V

    return-void
.end method


# virtual methods
.method public final getScreenDecorations()Lcom/android/systemui/ScreenDecorations;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->screenDecorationsProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ScreenDecorations;

    return-object p0
.end method

.method public final initialize(Landroid/content/Context;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;)V
    .locals 2

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->screenDecorationsComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ScreenDecorationsComponentImpl;->screenDecorationsProvider:Ldagger/internal/Provider;

    return-void
.end method
