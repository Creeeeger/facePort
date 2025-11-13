.class public abstract Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public messenger:Landroid/os/Messenger;

.field public final serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method
