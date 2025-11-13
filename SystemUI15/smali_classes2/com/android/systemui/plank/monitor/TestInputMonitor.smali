.class public final Lcom/android/systemui/plank/monitor/TestInputMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final tag:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/plank/monitor/TestInputMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "TestInputMonitor"

    sput-object v0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
