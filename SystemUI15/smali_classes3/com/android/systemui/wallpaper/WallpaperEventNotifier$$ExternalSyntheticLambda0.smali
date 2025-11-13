.class public final synthetic Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/text/DateFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$1:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;->f$1:Ljava/text/DateFormat;

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->text:Ljava/lang/String;

    invoke-static {v2, p0, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
