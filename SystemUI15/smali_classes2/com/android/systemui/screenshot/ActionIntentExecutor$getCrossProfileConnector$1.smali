.class public final synthetic Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;-><init>()V

    sput-object v0, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/os/IBinder;

    sget p0, Lcom/android/systemui/screenshot/ICrossProfileService$Stub;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.android.systemui.screenshot.ICrossProfileService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/systemui/screenshot/ICrossProfileService;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/screenshot/ICrossProfileService;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/screenshot/ICrossProfileService$Stub$Proxy;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ICrossProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method
