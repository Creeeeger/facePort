.class public final Lcom/android/systemui/touchpad/tutorial/ui/GestureViewModelFactory;
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
    .locals 1

    const-class p0, Lcom/android/systemui/touchpad/tutorial/ui/BackGestureTutorialViewModel;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/touchpad/tutorial/ui/BackGestureTutorialViewModel;

    invoke-direct {p0}, Lcom/android/systemui/touchpad/tutorial/ui/BackGestureTutorialViewModel;-><init>()V

    goto :goto_0

    :cond_0
    const-class p0, Lcom/android/systemui/touchpad/tutorial/ui/HomeGestureTutorialViewModel;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/touchpad/tutorial/ui/HomeGestureTutorialViewModel;

    invoke-direct {p0}, Lcom/android/systemui/touchpad/tutorial/ui/HomeGestureTutorialViewModel;-><init>()V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown ViewModel class: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
