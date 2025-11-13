.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;->INSTANCE:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$lifecycleObserver$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Lifecycle onStateChanged : event="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundCraft.SoundCraftViewComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
