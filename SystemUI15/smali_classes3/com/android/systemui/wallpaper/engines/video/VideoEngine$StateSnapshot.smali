.class public final Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$StateSnapshot;->mDisplayState:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
