.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->run()V

    return-void
.end method
