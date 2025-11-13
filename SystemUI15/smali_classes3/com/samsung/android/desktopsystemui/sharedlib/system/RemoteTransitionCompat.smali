.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteTransitionCompat"


# instance fields
.field mFilter:Landroid/window/TransitionFilter;

.field final mTransition:Landroid/window/RemoteTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$3;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$3;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    sget-object v2, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-void
.end method

.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public constructor <init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    new-instance p3, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V

    new-instance p1, Landroid/window/RemoteTransition;

    invoke-direct {p1, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    new-instance p3, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Ljava/util/concurrent/Executor;Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;)V

    new-instance p1, Landroid/window/RemoteTransition;

    invoke-direct {p1, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public addHomeOpenCheck(Landroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    const/16 v1, 0x100

    iput v1, v0, Landroid/window/TransitionFilter;->mNotFlags:I

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/window/TransitionFilter$Requirement;

    new-instance v3, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v3}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v3}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iput-object v2, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object p0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, p0, v4

    iput v1, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    iput-object p1, v0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    const/4 p1, 0x3

    filled-new-array {v5, p1}, [I

    move-result-object p1

    iput-object p1, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iput v5, v0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    aget-object p0, p0, v5

    iput v5, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 p1, 0x4

    filled-new-array {v1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilter()Landroid/window/TransitionFilter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-object p0
.end method

.method public getTransition()Landroid/window/RemoteTransition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method
