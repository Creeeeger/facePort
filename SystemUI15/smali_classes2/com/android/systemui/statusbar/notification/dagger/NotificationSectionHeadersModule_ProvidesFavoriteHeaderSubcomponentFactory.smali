.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesFavoriteHeaderSubcomponentFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final builderProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesFavoriteHeaderSubcomponentFactory;->builderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesFavoriteHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;->$r8$clinit:I

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "favorite header"

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    const v0, 0x7f130d4d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesFavoriteHeaderSubcomponentFactory;->builderProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesFavoriteHeaderSubcomponentFactory;->providesFavoriteHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    return-object p0
.end method
