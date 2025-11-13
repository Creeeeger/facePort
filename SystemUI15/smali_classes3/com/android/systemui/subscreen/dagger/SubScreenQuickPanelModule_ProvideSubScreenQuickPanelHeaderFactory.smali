.class public final Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule_ProvideSubScreenQuickPanelHeaderFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final quickPanelWindowViewProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule_ProvideSubScreenQuickPanelHeaderFactory;->quickPanelWindowViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideSubScreenQuickPanelHeader(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;)Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeader;
    .locals 1

    sget-object v0, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule;->INSTANCE:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0c43

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeader;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule_ProvideSubScreenQuickPanelHeaderFactory;->quickPanelWindowViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    invoke-static {p0}, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelModule_ProvideSubScreenQuickPanelHeaderFactory;->provideSubScreenQuickPanelHeader(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;)Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeader;

    move-result-object p0

    return-object p0
.end method
