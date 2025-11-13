.class public final Lcom/android/systemui/util/RingerModeTrackerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/RingerModeTracker;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final ringerMode:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final ringerModeInternal:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/RingerModeLiveData;

    new-instance v1, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerMode$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerMode$1;-><init>(Ljava/lang/Object;)V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/android/systemui/util/RingerModeLiveData;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/android/systemui/util/RingerModeLiveData;

    new-instance v1, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerModeInternal$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/RingerModeTrackerImpl$ringerModeInternal$1;-><init>(Ljava/lang/Object;)V

    const-string p1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, p2, p3, p1, v1}, Lcom/android/systemui/util/RingerModeLiveData;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public getRingerMode()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getRingerModeInternal()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Landroidx/lifecycle/LiveData;

    return-object p0
.end method
