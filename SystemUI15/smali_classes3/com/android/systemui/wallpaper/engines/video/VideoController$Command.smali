.class public Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;->mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;->mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
