.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    check-cast p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget p0, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->priority:I

    iget p1, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->priority:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
