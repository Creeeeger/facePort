.class public final Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_MembersInjector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectMSettingHelper(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method
