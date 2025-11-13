.class public final Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final fragmentToken:Landroid/os/Binder;

.field public final hide:Lkotlin/jvm/functions/Function0;

.field public final onCreateCallback:Lkotlin/jvm/functions/Function1;

.field public final onInfoChangedCallback:Lkotlin/jvm/functions/Function1;

.field public final organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->onCreateCallback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->onInfoChangedCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->hide:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    new-instance p1, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;-><init>(Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/window/TaskFragmentOrganizer;->registerOrganizer(Z)V

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    return-void
.end method
