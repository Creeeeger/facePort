.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationStatsLoggerModule_Companion_ProvideStatsLoggerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final providerProvider:Ljavax/inject/Provider;


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

    return-void
.end method

.method public static provideStatsLogger()Ljava/util/Optional;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationStatsLoggerModule;->Companion:Lcom/android/systemui/statusbar/notification/dagger/NotificationStatsLoggerModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationStatsLoggerModule_Companion_ProvideStatsLoggerFactory;->provideStatsLogger()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
