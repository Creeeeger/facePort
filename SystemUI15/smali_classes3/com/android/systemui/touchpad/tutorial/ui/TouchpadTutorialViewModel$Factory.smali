.class public final Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    new-instance p0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;

    invoke-direct {p0}, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;-><init>()V

    return-object p0
.end method
