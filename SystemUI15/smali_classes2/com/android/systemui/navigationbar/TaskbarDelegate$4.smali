.class public final Lcom/android/systemui/navigationbar/TaskbarDelegate$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;->this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDarkIntensity(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;->this$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->onNavButtonsDarkIntensityChanged(F)V

    return-void
.end method

.method public final getTintAnimationDuration()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method
