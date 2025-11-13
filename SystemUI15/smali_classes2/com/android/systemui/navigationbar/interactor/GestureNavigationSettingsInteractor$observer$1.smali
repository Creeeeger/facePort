.class public final synthetic Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;->$tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;->$tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->onNavigationSettingsChanged()V

    return-void
.end method
