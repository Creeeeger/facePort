.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mWrapped:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Landroid/view/RemoteAnimationAdapter;

    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v1

    move-object v0, p6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    iput-object p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method

.method public static wrapRemoteAnimationRunner(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V

    return-object v0
.end method


# virtual methods
.method public getWrapped()Landroid/view/RemoteAnimationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    return-object p0
.end method
